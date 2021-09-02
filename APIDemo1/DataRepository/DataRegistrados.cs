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


        public List<Registrado> GetDatoRegistradoByIdent(string Identificacion)
        {
            using (var context = new DBRegistradosContext())
            {
                return context.Registrados.Where(a=> a.Identificacion == Identificacion)
                    .ToList();
            }

        }

        public List<Registrado> GetDatoRegistradoByIdIdent(int Id, string Identificacion)
        {
            using (var context = new DBRegistradosContext())
            {
                return context.Registrados.Where(a => a.IdRegistrado == Id && a.Identificacion == Identificacion)
                    .ToList();
            }

        }

    }
}
