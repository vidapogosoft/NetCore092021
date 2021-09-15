using System;

namespace webapi_di.Logger
{
    public class ConsoleCustomLogger : ICustomLogger
    {
        private int ContadorMensaje = 1;

        public void Log(string mensaje)
        {
            Console.WriteLine("{0} {1}", ContadorMensaje++, mensaje);
        }
    }
}
