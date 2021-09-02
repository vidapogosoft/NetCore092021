using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Modelos.DTO;

namespace APIDemo1.Interfaces
{
    public interface IDTORegistrados
    {
        IEnumerable<DTORegistrado> ListRegistrados { get; }
        IEnumerable<DTORegistrado> ListDatoRegistrado(string Identificacion);
        IEnumerable<DTORegistrado> ListDatoRegistradoById(int IdRegistrado, string Identificacion);
    }
}
