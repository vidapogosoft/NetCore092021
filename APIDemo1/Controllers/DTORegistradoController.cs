using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Interfaces;

namespace APIDemo1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DTORegistradoController : ControllerBase
    {

        private readonly IDTORegistrados _IRegistrados;

        public DTORegistradoController(IDTORegistrados ireg)
        {

            _IRegistrados = ireg;
        }


        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_IRegistrados.ListRegistrados);
        }

        [HttpGet("{Identificacion}", Name = "Get1")]
        public IActionResult GetDatos(string Identificacion)
        {
            return Ok(_IRegistrados.ListDatoRegistrado(Identificacion));
        }

        [HttpGet("{Id}/{Identificacion}", Name = "Get22")]
        public IActionResult GetDatos2(int Id, string Identificacion)
        {
            return Ok(_IRegistrados.ListDatoRegistradoById(Id, Identificacion));
        }

        [HttpGet("Datos/{Identificacion}", Name = "Get33")]
        public IActionResult GetDatosRoute(string Identificacion)
        {
            return Ok(_IRegistrados.ListDatoRegistrado(Identificacion));
        }

        [HttpGet("Datos2/{Identificacion}", Name = "Get44")]
        public IActionResult GetDatosRoute2(string Identificacion)
        {
            return Ok(_IRegistrados.ListDatoRegistrado(Identificacion));
        }



    }
}
