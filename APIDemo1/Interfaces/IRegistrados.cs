using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Modelos.Database;

namespace APIDemo1.Interfaces
{
    public interface IRegistrados
    {
        IEnumerable<Registrado> ListRegistrados { get; }
        IEnumerable<Registrado> ListDatoRegistrado(string Identificacion);

        IEnumerable<Registrado> ListDatoRegistradoById(int IdRegistrado, string Identificacion);

        void InsertRegistrado(Registrado New);

    }
}
