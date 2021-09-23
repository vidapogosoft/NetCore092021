using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Order.Service.EventHandlers.Commands;
using Order.Service.Queries;
using Order.Service.Queries.DTOs;
using Services.Common.Collection;
using System.Threading.Tasks;



namespace Order.Api.Controllers
{
    [Route("v1/orders")]
    [ApiController]
    public class OrderController : ControllerBase
    {
        private readonly IOrderQueryService _orderQueryService;
        private readonly ILogger<OrderController> _logger;
        private readonly IMediator _mediator;

        public OrderController(
            ILogger<OrderController> logger,
            IMediator mediator,
            IOrderQueryService orderQueryService)
        {
            _logger = logger;
            _mediator = mediator;
            _orderQueryService = orderQueryService;
        }


        [HttpGet]
        public async Task<DataCollection<OrderDto>> GetAll(int page = 1, int take = 10)
        {
            _logger.LogInformation("--- Consulta sin filtro de registros");

            return await _orderQueryService.GetAllAsync(page, take);
        }

        [HttpGet("{id}")]
        public async Task<OrderDto> Get(int id)
        {
            _logger.LogInformation("--- Consulta de registros con el parametro:" + id);

            
            return await _orderQueryService.GetAsync(id);
        }

        [HttpPost]
        public async Task<IActionResult> Create(OrderCreateCommand notification)
        {
            _logger.LogInformation("--- Registro de ordenes");

            await _mediator.Publish(notification);
            return Ok();
        }


    }
}
