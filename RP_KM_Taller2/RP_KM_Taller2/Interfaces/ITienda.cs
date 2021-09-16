using RP_KM_Taller2.Modelos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Taller1.Modelos.Database;

namespace RP_KM_Taller2.Interfaces
{
    public interface ITienda
    {
        void InsertTienda(DTOTienda New);
    }
}
