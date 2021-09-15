using webapi_di.Interfaces;
using webapi_di.Logger;

namespace webapi_di.Comandos
{
    public class Comando1 : IComando
    {
        private readonly IScopedService _scopeSrv;
        private readonly ITransientService _transientSrv;
        private readonly ICustomLogger _logger;

        public Comando1(IScopedService scopeSrv,
                        ITransientService transientSrv,
                        ICustomLogger logger)
        {
            _logger = logger;
            _logger.Log("Instancia Comando1");
            _scopeSrv = scopeSrv;
            _transientSrv = transientSrv;
        }

        public void ScopedService()
        {
            _logger.Log("Comando1::ScopedService " + _scopeSrv.GetHashCode());
            _scopeSrv.Ejecutar();
        }

        public void TransientService()
        {
            _logger.Log("Comando1::TransientService " + _transientSrv.GetHashCode());
            _transientSrv.Ejecutar();
        }
    }
}
