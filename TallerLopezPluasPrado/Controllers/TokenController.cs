using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


using Microsoft.Extensions.Logging;
using Microsoft.AspNetCore.Authorization;

using TallerLopezPluasPrado.Interfaces;
using TallerLopezPluasPrado.Modelos.DTO;
namespace TallerLopezPluasPrado.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class TokenController : ControllerBase
    {
        //private readonly ILogger<TokenController> _logger;
        private readonly IJwtAuthenticationService _authService;
        public TokenController(IJwtAuthenticationService auth)
        {
            _authService = auth;
        }

        /// <summary>
        /// Generación de Token
        /// </summary>
        /// <param name="user">Se envian por parámetros el usuario y la clave.</param>
        /// <returns></returns>
        [AllowAnonymous]
        [HttpPost("authenticate")]
        public IActionResult Authenticate([FromBody] AuthInfo user)
        {
            var token = _authService.Authenticate(user.Username, user.Password);

            if (token == null)
            {
                return Unauthorized();
            }


            return Ok(token);

        }
    }
}
