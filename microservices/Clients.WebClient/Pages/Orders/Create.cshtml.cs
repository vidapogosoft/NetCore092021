using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using System.Threading.Tasks;
using Api.Gateway.WebClient.Proxy;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Api.Gateway.Models;
using Api.Gateway.Models.Catalogo.DTOs;
using Api.Gateway.Models.Customer.DTOs;
using Api.Gateway.Models.Order.Commands;
using Microsoft.AspNetCore.Mvc;

using System.Text.Json;

namespace Clients.WebClient.Pages.Orders
{
    [Authorize(AuthenticationSchemes = CookieAuthenticationDefaults.AuthenticationScheme)]
    public class CreateModel : PageModel
    {
        private readonly IOrderProxy _orderProxy;
        private readonly IClientProxy _clientProxy;
        private readonly IProductProxy _productProxy;

        public DataCollection<ProductDto> Products { get; set; }
        public DataCollection<ClientDto> Clients { get; set; }

        public CreateModel(
      
           IOrderProxy orderProxy,
           IClientProxy clientProxy,
           IProductProxy productProxy
       )
        {
            _orderProxy = orderProxy;
            _clientProxy = clientProxy;
            _productProxy = productProxy;
        }

        public async Task OnGet()
        {
            Products = await _productProxy.GetAllAsync(1, 20);
            Clients = await _clientProxy.GetAllAsync(1, 50);
        }

        public async Task<IActionResult> OnPost([FromBody] OrderCreateCommand command)
        {
            await _orderProxy.CreateAsync(command);
            return this.StatusCode(200);
        }
    }
}
