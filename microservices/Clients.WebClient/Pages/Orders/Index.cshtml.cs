using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;

using Api.Gateway.Models;
using Api.Gateway.Models.Order.DTOs;
using Api.Gateway.WebClient.Proxy;

namespace Clients.WebClient.Pages.Orders
{

    [Authorize(AuthenticationSchemes = CookieAuthenticationDefaults.AuthenticationScheme)]
    public class IndexModel : PageModel
    {

        private readonly IOrderProxy _orderProxy;
        public DataCollection<OrderDto> Orders { get; set; }

        public int CurrentPage { get; set; } = 1;

        public IndexModel(

             IOrderProxy orderProxy

            )
        {
            _orderProxy = orderProxy;

        }

        public async Task OnGet()
        {

            //nos comunicamos con proxy   Api.Gateway.WebClient.Proxy

            Orders = await _orderProxy.GetAllAsync(CurrentPage, 10);

        }
    }
}
