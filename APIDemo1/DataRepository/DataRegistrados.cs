using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Modelos.Database;

namespace APIDemo1.DataRepository
{
    public class DataRegistrados
    {
        
        public List<Registrado> GetRegistrados()
        {
            using (var context = new DBRegistradosContext())
            {
                return context.Registrados.ToList();
            }

        }

    }
}
