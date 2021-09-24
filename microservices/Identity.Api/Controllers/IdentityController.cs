using Identity.Domain;
using Identity.Service.EventHandlers.Commands;
using MediatR;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Threading.Tasks;

using Identity.Service.Queries;
using Identity.Service.Queries.DTOs;
using Services.Common.Collection;
using System.Collections.Generic;

namespace Identity.Api.Controllers
{
    [Route("v1/identity")]
    [ApiController]
    public class IdentityController : ControllerBase
    {
        private readonly ILogger<IdentityController> _logger;
        private readonly IMediator _mediator;
        private readonly IUserQueryService _userQueryService;

        public IdentityController(
            ILogger<IdentityController> logger,
              IUserQueryService userQueryService,
             IMediator mediator)
        {
            _userQueryService = userQueryService;
            _logger = logger;
            _mediator = mediator;
        }

        [HttpGet]
        public async Task<DataCollection<UserDto>> GetAll(int page = 1, int take = 10, string ids = null)
        {
            IEnumerable<string> users = ids?.Split(',');
            return await _userQueryService.GetAllAsync(page, take, users);
        }


        [HttpPost]
        public async Task<IActionResult> Create(UserCreateCommand com)
        {

            if(ModelState.IsValid)
            {
                var result = await _mediator.Send(com);

                if (!result.Succeeded)
                {
                    return BadRequest(result.Errors);
                }

                return Ok();

            }

            return BadRequest();

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
