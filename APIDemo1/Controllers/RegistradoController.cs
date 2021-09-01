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


    }
}
