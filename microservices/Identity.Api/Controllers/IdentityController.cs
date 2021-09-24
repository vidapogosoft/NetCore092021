using Identity.Domain;
using Identity.Service.EventHandlers.Commands;
using MediatR;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Threading.Tasks;



namespace Identity.Api.Controllers
{
    [Route("v1/identity")]
    [ApiController]
    public class IdentityController : ControllerBase
    {
        private readonly ILogger<IdentityController> _logger;
        private readonly IMediator _mediator;

        public IdentityController(
            ILogger<IdentityController> logger,
             IMediator mediator)
        {

            _logger = logger;
            _mediator = mediator;
        }

        // POST api/<IdentityController>
        [HttpPost("authentication")]
        public async Task<IActionResult> Authenticaction(UserLoginCommand command)
        {

            if (ModelState.IsValid)
            {
                var result = await _mediator.Send(command);

                if (!result.Succeeded)
                {
                    return BadRequest("Acceso denegado");
                }

                return Ok(result);

            }

            return BadRequest();

         }

    }
}
