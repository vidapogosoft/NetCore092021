using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Microsoft.Extensions.Logging;
using Services.Common.Collection;
using Customer.Service.Queries;
using Customer.Service.Queries.DTOs;

using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;

namespace Customer.Api.Controllers
{
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    [Route("v1/clients")]
    [ApiController]
    public class ClientController : ControllerBase
    {

        private readonly IClientQueryService _clientQuerService;
        private readonly ILogger<ClientController> _logger;


        public ClientController(
          ILogger<ClientController> logger,
          IClientQueryService clientQuerService)
        {
            _logger = logger;
            _clientQuerService = clientQuerService;
        }

        [HttpGet]
        public async Task<DataCollection<ClientDto>> GetAll(int page = 1, int take = 10, string ids = null)
        {

            _logger.LogInformation("--- Consulta sin filtro de registros");

            IEnumerable<int> clients = null;

            if (!string.IsNullOrEmpty(ids))
            {
                clients = ids.Split(',').Select(x => Convert.ToInt32(x));
            }

            return await _clientQuerService.GetAllAsync(page, take, clients);
        }

        [HttpGet("{id}")]
        public async Task<ClientDto> Get(int id)
        {
            _logger.LogInformation("--- Consulta de registros con el parametro:" + id);

            return await _clientQuerService.GetAsync(id);
        }

    }
}
