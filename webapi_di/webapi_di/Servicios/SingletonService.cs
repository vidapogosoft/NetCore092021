using webapi_di.Interfaces;
using webapi_di.Logger;

namespace webapi_di.Servicios
{
    /// <summary>
    /// Warning
    ///     Do not resolve a scoped service from a singleton.It may cause the service to have
    ///     incorrect state when processing subsequent requests.It's fine to resolve a singleton 
    ///     service from a scoped or transient service.
    /// </summary>
    public class SingletonService : ISingletonService
    {
        private readonly ICustomLogger _logger;

        public int Contador { get; set; }
        public SingletonService(ICustomLogger logger)
        {
            _logger = logger;
            _logger.Log("Instancia SingletonService");
            Contador = 0;
        }

        public int SumarOp()
        {
            return Contador++;
        }
    }
}
