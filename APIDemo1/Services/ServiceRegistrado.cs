using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Interfaces;
using APIDemo1.Modelos.Database;
using APIDemo1.DataRepository;

namespace APIDemo1.Services
{
    public class ServiceRegistrado : IRegistrados
    {
        public DataRegistrados data = new DataRegistrados();

        public IEnumerable<Registrado> ListRegistrados
        {
            get { return data.GetRegistrados();  }
        }

    }
}
