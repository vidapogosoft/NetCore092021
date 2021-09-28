﻿using Api.Gateway.Models;
using Api.Gateway.Models.Catalogo.DTOs;
using Api.Gateway.Proxies;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Api.Gateway.WebClient.Controllers
{
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    [Route("products")]
    [ApiController]
    public class ProductController : ControllerBase
    {

        private readonly ICatalogProxy _catalogProxy;

        public ProductController(
            ICatalogProxy catalogProxy
        )
        {
            _catalogProxy = catalogProxy;
        }

        [HttpGet]
        public async Task<DataCollection<ProductDto>> GetAll(int page, int take)
        {
            return await _catalogProxy.GetAllAsync(page, take);
        }
    }
}
