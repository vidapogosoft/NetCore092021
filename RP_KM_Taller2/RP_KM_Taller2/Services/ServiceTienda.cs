using RP_KM_Taller2.DataRepository;
using RP_KM_Taller2.Interfaces;
using RP_KM_Taller2.Modelos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Taller1.Modelos.Database;

namespace RP_KM_Taller2.Services
{
    public class ServiceTienda : ITienda
    {
        public DataTienda data = new DataTienda();

        public void InsertTienda(DTOTienda New)
        {
            data.InsertaTienda(New);
        }
    }
}
