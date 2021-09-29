using System;
using System.Collections.Generic;
using System.Text;


using Api.Gateway.Models;
using Api.Gateway.Models.Order.DTOs;
using Api.Gateway.Models.Order.Commands;
using Api.Gateway.WebClient.Proxy.Config;
using Microsoft.AspNetCore.Http;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;


namespace Api.Gateway.WebClient.Proxy
{

    public interface IOrderProxy
    {
        Task<DataCollection<OrderDto>> GetAllAsync(int page, int take);
        Task<OrderDto> GetAsync(int id);
        Task CreateAsync(OrderCreateCommand command);
    }

    public class OrderProxy: IOrderProxy
    {

        private readonly string _apiGatewayUrl;
        private readonly HttpClient _httpClient;

        public OrderProxy(

            HttpClient httpClient,
            ApiGatewayUrl apiGatewayUrl,
            IHttpContextAccessor httpContextAccessor)

        {

            httpClient.AddBearerToken(httpContextAccessor);
            _httpClient = httpClient;
            _apiGatewayUrl = apiGatewayUrl.Value;

        }


        public async Task<DataCollection<OrderDto>> GetAllAsync(int page, int take)
        {
            var request = await _httpClient.GetAsync($"{_apiGatewayUrl}orders?page={page}&take={take}");
            request.EnsureSuccessStatusCode();

            return JsonSerializer.Deserialize<DataCollection<OrderDto>>(
               await request.Content.ReadAsStringAsync(),
               new JsonSerializerOptions
               {
                   PropertyNameCaseInsensitive = true
               }
           );
        }

        public async Task<OrderDto> GetAsync(int id)
        {
            var request = await _httpClient.GetAsync($"{_apiGatewayUrl}orders/{id}");
            request.EnsureSuccessStatusCode();

            return JsonSerializer.Deserialize<OrderDto>(
                await request.Content.ReadAsStringAsync(),
                new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                }
            );
        }

        public async Task CreateAsync(OrderCreateCommand command)
        {
            var content = new StringContent(
                JsonSerializer.Serialize(command),
                Encoding.UTF8,
                "application/json"
            );

            var request = await _httpClient.PostAsync($"{_apiGatewayUrl}orders", content);
            request.EnsureSuccessStatusCode();
        }

    }
}
