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

    }
}
