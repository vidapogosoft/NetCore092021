using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using TALLER2AE.Models.Dto;
using TALLER2AE.Services;

namespace TALLER2AE.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    [Authorize]
    public class BandController: Controller
    {
        private readonly DataService _bandService;
        public BandController(DataService bandService)
        {
            _bandService = bandService;
        }
        [HttpGet]
        [Produces("application/json")]
        public IActionResult GetBands()
        {
            return Json(_bandService.GetBands());
        }

        [HttpPost]
        public IActionResult SaveBand([FromBody]Band band)
        {
            return Json(_bandService.SaveBand(band));
        }
    }
}
