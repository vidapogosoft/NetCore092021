using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebPrueba.Models;
using Newtonsoft.Json;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace WebPrueba.Controllers
{
    public class MantenimientoController : Controller
    {
        string Baseurl = "http://localhost:51597/";

        public async Task<ActionResult> Index()
        {
            List<Productos> empInfo = new List<Productos>();
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(Baseurl);
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage Res = await client.GetAsync("api/Mantenimiento/");
                if (Res.IsSuccessStatusCode)
                {
                    var empResponse = Res.Content.ReadAsStringAsync().Result;
                    empInfo = JsonConvert.DeserializeObject<List<Productos>>(empResponse);
                }

                return View(empInfo);
            }
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Productos productos)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(Baseurl+ "api/Mantenimiento/AgregarProducto");
                var postTask = client.PostAsJsonAsync<Productos>("Tbl_Productos", productos);

                postTask.Wait();
                var result = postTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
                ModelState.AddModelError(string.Empty, "Error al conectar con el api...");
                return View(productos);
            }
        }

        public ActionResult Edit(int id)
        {
            Productos productos = null;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(Baseurl);

                var responseTask = client.GetAsync("api/Mantenimiento?ids=" + id.ToString());
                responseTask.Wait();

                var result = responseTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<Productos>();
                    readTask.Wait();
                    productos = readTask.Result;
                }
                return View(productos);
            }
        }

        [HttpPost]
        public ActionResult Edit(Productos productos)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(Baseurl);
                var pd = productos.id;
                var putTask = client.PutAsJsonAsync($"api/Mantenimiento/ActualizarProducto?ids=" + pd, productos);
                putTask.Wait();
                
                var result = putTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
                ModelState.AddModelError(string.Empty, "Error al actualizar...");
                return View(productos);
            }
        }

        public ActionResult Delete(int id)
        {
            Productos productos = null;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(Baseurl);

                var responseTask = client.GetAsync("api/Mantenimiento?ids=" + id.ToString());
                responseTask.Wait();

                var result = responseTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<Productos>();
                    readTask.Wait();
                    productos = readTask.Result;
                }
                return View(productos);
            }
        }

        [HttpPost]
        public ActionResult Delete(Productos productos,int id)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(Baseurl);

                var deleteTask = client.DeleteAsync("api/Mantenimiento/EliminaProducto?id=" + id.ToString());
                deleteTask.Wait();

                var result = deleteTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
                return View(productos);
            }
        }


    }
}