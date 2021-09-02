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

        [HttpGet("{Identificacion}", Name = "Get")]
        public IActionResult GetDatos(string Identificacion)
        {
            return Ok(_IRegistrados.ListDatoRegistrado(Identificacion));
        }

        [HttpGet("{Id}/{Identificacion}", Name = "Get2")]
        public IActionResult GetDatos2(int Id, string Identificacion)
        {
            return Ok(_IRegistrados.ListDatoRegistradoById(Id, Identificacion));
        }

        [HttpGet("Datos/{Identificacion}", Name = "Get3")]
        public IActionResult GetDatosRoute(string Identificacion)
        {
            return Ok(_IRegistrados.ListDatoRegistrado(Identificacion));
        }

        [HttpGet("Datos2/{Identificacion}", Name = "Get4")]
        public IActionResult GetDatosRoute2(string Identificacion)
        {
            return Ok(_IRegistrados.ListDatoRegistrado(Identificacion));
        }



    }
}
