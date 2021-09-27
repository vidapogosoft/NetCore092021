using Identity.Domain;
using Identity.Service.EventHandlers.Commands;
using MediatR;
using Microsoft.AspNetCore.Identity;
using System.Threading;
using System.Threading.Tasks;


namespace Identity.Service.EventHandlers
{
    public class UserCreateEventHandler :
        IRequestHandler<UserCreateCommand, IdentityResult>
    {

        private readonly UserManager<ApplicationUser> _userManager;

        public UserCreateEventHandler(
           UserManager<ApplicationUser> userManager)
        {
            _userManager = userManager;
        }

        public async Task<IdentityResult> Handle (UserCreateCommand notif, CancellationToken cancel)
        {
            var entry = new ApplicationUser
            {
                FirstName = notif.FirstName,
                LastName = notif.LastName,
                Email = notif.Email,
                UserName = notif.Email
            };

            return await _userManager.CreateAsync(entry, notif.Password);

        }



    }
}
