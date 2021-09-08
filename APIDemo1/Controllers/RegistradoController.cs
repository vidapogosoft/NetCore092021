using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Interfaces;
using APIDemo1.Modelos.Database;

using Microsoft.AspNetCore.Authorization;

namespace APIDemo1.Controllers
{

    //TODO: revisar time del expire
    //[Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class RegistradoController : ControllerBase
    {

        private readonly IRegistrados _IRegistrados;

        public RegistradoController(IRegistrados ireg)
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

        [HttpGet("SP", Name = "GetSP")]
        public IActionResult GetDatosSP()
        {
            return Ok(_IRegistrados.ListSPRegistrados);
        }

        [HttpPost]
        public IActionResult Create([FromBody] Registrado NewItem)
        {
            try
            {
                if (NewItem == null || !ModelState.IsValid)
                {
                    return BadRequest("Error: Envio de datos ");
                }

                //continua con el ingreso de datos
                _IRegistrados.InsertRegistrado(NewItem);

            }
            catch (Exception ex)
            {
                return BadRequest("Error:" + ex.Message);
            }

            return Ok(NewItem);
        }

        [HttpPut]
        public IActionResult Update([FromBody] Registrado UPDItem)
        {
            try
            {
                if (UPDItem == null || !ModelState.IsValid)
                {
                    return BadRequest("Error: Envio de datos ");
                }

                //continua con el ingreso de datos
                _IRegistrados.UpdateRegistrado(UPDItem);

            }
            catch (Exception ex)
            {
                return BadRequest("Error:" + ex.Message);
            }

            return NoContent();
        }

        [HttpDelete]
        public IActionResult Delete([FromBody] Registrado DelItem)
        {
            try
            {
                if (DelItem == null || !ModelState.IsValid)
                {
                    return BadRequest("Error: Envio de datos ");
                }

                //continua con el ingreso de datos
                _IRegistrados.DeleteRegistrado(DelItem);

            }
            catch (Exception ex)
            {
                return BadRequest("Error:" + ex.Message);
            }

            return NoContent();
        }

    }
}
