using bridge_pattern.Implementacion;
using System;

namespace bridge_pattern
{
    class Program
    {
        static void Main(string[] args)
        {
            AbstraccionSaludo abs;
            Cliente cli = new Cliente();

            // Saludo en Español
            abs = new AbstraccionSaludo(new SaludoES());
            cli.SaludarAUnaPersona(abs);

            // Saludo en Ingles
            abs = new AbstraccionSaludo(new SaludoEN());
            cli.SaludarAUnaPersona(abs);

            AbstraccionSaludoMAYUSCULA absM;
            // Saludo en Español
            absM = new AbstraccionSaludoMAYUSCULA(new SaludoES());
            cli.SaludarAUnaPersona(absM);

            // Saludo en Ingles
            absM = new AbstraccionSaludoMAYUSCULA(new SaludoEN());
            cli.SaludarAUnaPersona(absM);

            Console.ReadLine();
        }
    }
}
