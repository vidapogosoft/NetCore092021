using webapi_di.Interfaces;
using webapi_di.Logger;

namespace webapi_di.Servicios
{
    public class TransientService : ITransientService
    {
        private readonly ICustomLogger _logger;
        public TransientService(ICustomLogger logger)
        {
            _logger = logger;
            _logger.Log("Instancia TransientService " + this.GetHashCode());
        }

        public string Ejecutar()
        {
            _logger.Log("TransientService::Ejecutar " + this.GetHashCode());
            return nameof(TransientService);
        }
    }
}
