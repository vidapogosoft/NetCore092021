using Identity.Domain;
using Identity.Persistence.Database;
using Identity.Service.EventHandlers.Commands;
using Identity.Service.EventHandlers.Responses;

using MediatR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

using Microsoft.AspNetCore.Identity;

namespace Identity.Service.EventHandlers
{
    public class UserLoginEventHandler : 
        IRequestHandler<UserLoginCommand, IdentityAccess>
    {

        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly ApplicationDbContext _context;
        private readonly IConfiguration _configuration;


        public UserLoginEventHandler(
            SignInManager<ApplicationUser> signInManager,
            ApplicationDbContext context,
            IConfiguration configuration)
        {
            _signInManager = signInManager;
            _context = context;
            _configuration = configuration;
        }


        public async Task<IdentityAccess> Handle(UserLoginCommand notification, 
            CancellationToken cancellationToken)
        {

            var result = new IdentityAccess();

            var user = await _context.Users.SingleAsync(x => x.Email == notification.Email);

            if (user != null)
            {
                var response = await _signInManager.CheckPasswordSignInAsync(user, notification.Password, false);

                if (response.Succeeded)
                {
                    result.Succeeded = true;
                    await GenerateToken(user, result);
                }

            }


            return result;

        }


        //metodo que genera el token
        private async Task GenerateToken(ApplicationUser user, IdentityAccess identity)
        {
            var secretKey = _configuration.GetValue<string>("SecretKey");
            var key = Encoding.ASCII.GetBytes(secretKey);

            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.NameIdentifier, user.Id),
                new Claim(ClaimTypes.Email, user.Email),
                new Claim(ClaimTypes.Name, user.FirstName),
                new Claim(ClaimTypes.Surname, user.LastName)
            };

            var roles = await _context.Roles
                                      .Where(x => x.UserRoles.Any(y => y.UserId == user.Id))
                                      .ToListAsync();

            foreach (var role in roles)
            {
                claims.Add(
                    new Claim(ClaimTypes.Role, role.Name)
                );
            }

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Expires = DateTime.UtcNow.AddDays(1),
                Subject = new ClaimsIdentity(claims),

                SigningCredentials = new SigningCredentials(
                    new SymmetricSecurityKey(key),
                    SecurityAlgorithms.HmacSha256Signature
                )

            };

            var tokenhandler = new JwtSecurityTokenHandler();
            var createdToken = tokenhandler.CreateToken(tokenDescriptor);

            identity.AccessToken = tokenhandler.WriteToken(createdToken);

        }


    }
}
