using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Modelos.Database;
using APIDemo1.Modelos.DTO;

namespace APIDemo1.Interfaces
{
    public interface IRegistrados
    {
        IEnumerable<Registrado> ListRegistrados { get; }
        IEnumerable<Registrado> ListDatoRegistrado(string Identificacion);

        Registrado ListDatoRegistrado2(int IdRegistardo);

        IEnumerable<Registrado> ListDatoRegistradoById(int IdRegistrado, string Identificacion);

        void InsertRegistrado(Registrado New);
        void UpdateRegistrado(Registrado UpdItem);
        void DeleteRegistrado(Registrado DelItem);
        void DeleteRegistrado2(int IdRegistrado);

        IEnumerable<DTOResultSet> ListSPRegistrados { get; }

    }
}
