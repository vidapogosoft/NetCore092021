using Microsoft.AspNetCore.Mvc;
using TALLER2AE.Interfaces;
using TALLER2AE.Models.Dto;

namespace TALLER2AE.Repositories
{
    [ApiController]
    [Route("api/[controller]")]
    public class TokenController: ControllerBase
    {
        private readonly IJwtAuthenticationService _authService;
        public TokenController(IJwtAuthenticationService authService)
        {
            _authService = authService;
        }

        [HttpPost]
        public IActionResult Authenticate(AuthRequest authRequest)
        {
            return Ok(_authService.Authenticate(authRequest.Username, authRequest.Password));
        }
    }
}
