using System;
using System.Collections.Generic;
using System.Text;

using Newtonsoft.Json;
using System.Net.Http;
using System.Net.Http.Headers;

using CallAPI.Model;


namespace CallAPI
{
    public class Consumo
    {

        public List<DTORegistrados> ListRegistrados;
        public string Token = string.Empty;

        HttpClient _Client;


        public Consumo()
        {
            _Client = new HttpClient();
        }

        public void ConsumoAPi()
        {

            while(true)
            {
                try
                {

                    PostTokenApi();

                    GetApiAuth();

                    System.Threading.Thread.Sleep(4200);

                }
                catch (Exception)
                {

                    throw;
                }

            }

        }

        public async void GetApiAuth()
        {

            var uriget = new Uri("http://localhost/APIDemo1/api/Registrado");

            if (string.IsNullOrEmpty(Token))
            {
                Console.WriteLine("No existe token");
            }
            else
            {
                _Client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Token);

                var responseget = await _Client.GetAsync(uriget);

                if(responseget.IsSuccessStatusCode)
                {
                    var contentget = await responseget.Content.ReadAsStringAsync();

                    ListRegistrados = JsonConvert.DeserializeObject<List<DTORegistrados>>(contentget);

                }

                if (ListRegistrados.Count > 0)
                {
                    Console.WriteLine("get Exitoso");
                }


            }


        }

        public async void PostTokenApi()
        {
            var uri = new Uri("http://localhost/APIDemo1/api/Token/authenticate");

            TokenAuth auth = new TokenAuth();

            auth.Username = "demo";
            auth.Password = "123456";

            var json = JsonConvert.SerializeObject(auth);

            var content = new StringContent(json,  Encoding.UTF8, "application/json");

            HttpResponseMessage ResponseToken = null;

            ResponseToken = await _Client.PostAsync(uri, content);

            if (ResponseToken.IsSuccessStatusCode)
            {

                Token = ResponseToken.Content.ReadAsStringAsync().GetAwaiter().GetResult();


                Console.WriteLine(Token);

            }

        }

    }
}
