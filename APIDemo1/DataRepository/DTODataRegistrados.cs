using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


using APIDemo1.Modelos.Database;
using APIDemo1.Modelos.DTO;

namespace APIDemo1.DataRepository
{
    public class DTODataRegistrados
    {

        public List<DTORegistrado> GetRegistrados()
        {
            using (var context = new DBRegistradosContext())
            {
                var X = (
                    
                        from a in context.Registrados
                        
                        select new DTORegistrado()
                        {
                            Identificacion = a.Identificacion,
                            NombresCompletos = a.NombresCompletos

                        }                    
                    ).ToList();

                return X;

                //return context.Registrados.ToList();
            }

        }


        public List<DTORegistrado> GetDatoRegistradoByIdent(string Identificacion)
        {
            using (var context = new DBRegistradosContext())
            {
                var X = (

                        from a in context.Registrados
                        where a.Identificacion == Identificacion
                        select new DTORegistrado()
                        {
                            Identificacion = a.Identificacion,
                            NombresCompletos = a.NombresCompletos

                        }
                    ).ToList();

                return X;
            }

        }

        public List<DTORegistrado> GetDatoRegistradoByIdIdent(int Id, string Identificacion)
        {
            using (var context = new DBRegistradosContext())
            {
                var X = (

                        from a in context.Registrados
                        where a.Identificacion == Identificacion
                        && a.IdRegistrado == Id
                        select new DTORegistrado()
                        {
                            Identificacion = a.Identificacion,
                            NombresCompletos = a.NombresCompletos

                        }
                    ).ToList();

                return X;
            }

        }

    }
}
