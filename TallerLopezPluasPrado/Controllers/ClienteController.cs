using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


using TallerLopezPluasPrado.Interfaces;
using TallerLopezPluasPrado.Modelos.Database;
using Microsoft.AspNetCore.Authorization;


namespace TallerLopezPluasPrado.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClienteController : ControllerBase
    {
        private readonly IClientes _Iclientes;
        

        public ClienteController(IClientes ireg)
        {
            _Iclientes = ireg;

        }

        /// <summary>
        /// Crear un nuevo registro en el catálogo de clientes
        /// </summary>
        /// <param name="NewItem">Recibe como parápetro la identificación del cliente y sus nombres</param>
        /// <returns></returns>
        [Authorize]
        [HttpPost]
        public IActionResult Create([FromBody] Cliente NewItem)
        {
            try
            {
                if (NewItem == null || !ModelState.IsValid)
                {
                    return BadRequest("Error: Envio de datos ");
                }

                //continua con el ingreso de datos
                var result =  _Iclientes.SPCreaClientes(NewItem.IdentificacionCliente,  NewItem.NombreCliente).FirstOrDefault();
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest("Error:" + ex.Message);
            }

            return Ok(NewItem);
        }

    }
}
