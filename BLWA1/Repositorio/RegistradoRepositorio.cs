using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.Net.Http;
using System.Text;
using System.Text.Json;


namespace BLWA1.Repositorio
{
    public class RegistradoRepositorio : IRegistradoRepositorio
    {
        private readonly HttpClient httpClient;

        private JsonSerializerOptions OpcionesPorDefectoJSON => new JsonSerializerOptions()
        { PropertyNameCaseInsensitive = true };


        public RegistradoRepositorio (HttpClient httpClient)
        {
            this.httpClient = httpClient;
        }

        public async Task<HttpResponseWrapper<T>> GetRegistrados<T>(string url)
        {
            var responseHTTP = await httpClient.GetAsync(url);

            if(responseHTTP.IsSuccessStatusCode)
            {
                var response = await DeserializarRespuesta<T>(responseHTTP, OpcionesPorDefectoJSON);

                return new HttpResponseWrapper<T>(response, false, responseHTTP);

            }
            else
            {
                return new HttpResponseWrapper<T>(default, true, responseHTTP);
            }
        }


        private async Task<T> DeserializarRespuesta<T>(HttpResponseMessage httpResponse, JsonSerializerOptions jsonSerializerOptions)
        {
            var responseString = await httpResponse.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<T>(responseString, jsonSerializerOptions);
        }

    }
}
