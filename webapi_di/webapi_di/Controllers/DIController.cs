using Microsoft.AspNetCore.Mvc;
using webapi_di.Comandos;
using webapi_di.Interfaces;
using webapi_di.Logger;

namespace webapi_di.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DIController : ControllerBase
    {
        private readonly ISingletonService _singletonSrv;
        private readonly IScopedService _scopeSrv;
        private readonly ITransientService _transientSrv;
        private readonly IComando _comando;
        private readonly ICustomLogger _logger;

        public DIController(ISingletonService singletonSrv,
                            IScopedService scopeSrv,
                            ITransientService transientSrv,
                            IComando comando,
                            ICustomLogger logger)
        {
            _singletonSrv = singletonSrv;
            _scopeSrv = scopeSrv;
            _transientSrv = transientSrv;
            _comando = comando;
            _logger = logger;
            _logger.Log("****** Instancia DIController ******");
        }

        public IActionResult DI()
        {
            return Ok("Prueba de Inyección de Dependencias");
        }

        [Route("singleton")]
        public IActionResult Singleton()
        {
            int valor = _singletonSrv.SumarOp();
            _logger.Log("DIController::Singleton valor=" + valor.ToString());
            return Ok(new
            {
                valor 
            });
        }

        [Route("scope")]
        public IActionResult ScopeSrv()
        {
            _logger.Log("ScopeSrv Inicio");
            _comando.ScopedService();
            return Ok(new
            {
                valor = _scopeSrv.Ejecutar()
            });
        }

        [Route("transient")]
        public IActionResult TransientSrv()
        {
            _logger.Log("TransientSrv Inicio");
            _comando.TransientService();
            return Ok(new
            {
                valor = _transientSrv.Ejecutar()
            });
        }

        [Route("comando")]
        public IActionResult ComandoScope()
        {
            _comando.ScopedService();
            _comando.TransientService();

            return Ok();
        }
    }
}
