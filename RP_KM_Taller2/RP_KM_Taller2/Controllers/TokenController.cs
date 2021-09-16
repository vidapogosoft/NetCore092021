using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using RP_KM_Taller2.Interfaces;
using RP_KM_Taller2.Modelos.Database;

namespace RP_KM_Taller2.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class TokenController : ControllerBase
    {

        private readonly IJwtAuthenticationService _authService;

        public TokenController(IJwtAuthenticationService auth)
        {

            _authService = auth;
        }

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
