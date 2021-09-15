using webapi_di.Interfaces;
using webapi_di.Logger;

namespace webapi_di.Servicios
{
    public class ScopedService : IScopedService
    {
        private readonly ICustomLogger _logger;
   
        public ScopedService(ICustomLogger logger)
        {
            _logger = logger;
            _logger.Log("Instancia ScopedService " + this.GetHashCode());
        }

        public string Ejecutar()
        {
            _logger.Log("ScopedService::Ejecutar " + this.GetHashCode());
            return nameof(ScopedService);
        }
    }
}
