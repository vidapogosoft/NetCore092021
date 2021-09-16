using Microsoft.AspNetCore.Mvc;
using RP_KM_Taller2.Interfaces;
using RP_KM_Taller2.Modelos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Taller1.Modelos.Database;

namespace RP_KM_Taller2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TiendaController : ControllerBase
    {
        private readonly ITienda _ITienda;

        public TiendaController(ITienda ireg)
        {

            _ITienda = ireg;
        }


        [HttpPost]
        public IActionResult Create([FromBody] DTOTienda NewItem)
        {
            try
            {
                if (NewItem == null || !ModelState.IsValid)
                {
                    return BadRequest("Error: Envio de datos ");
                }

                //continua con el ingreso de datos
                _ITienda.InsertTienda(NewItem);

            }
            catch (Exception ex)
            {
                return BadRequest("Error:" + ex.Message);
            }

            return Ok(NewItem);
        }
    }
}
