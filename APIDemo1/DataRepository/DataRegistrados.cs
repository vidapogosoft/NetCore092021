using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Modelos.Database;
using APIDemo1.Modelos.DTO;

using Microsoft.EntityFrameworkCore;

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

        public void InsertRegistrado(Registrado NewItem)
        {
            using (var context = new DBRegistradosContext())
            {
                NewItem.IdRegistrado = 0;

                context.Registrados.Add(NewItem);
                context.SaveChanges();
            }
        }


        public void DeleteRegistrado(Registrado DelItem)
        {
            using (var context = new DBRegistradosContext())
            {
                context.Registrados.Remove(DelItem);
                context.SaveChanges();
            }
        }

        public void UpdateRegistrado(Registrado UpdItem)
        {
            using (var context = new DBRegistradosContext())
            {
                var registrado = context.Registrados.Where(a => a.IdRegistrado == UpdItem.IdRegistrado).ToList();

                
                if (registrado.Count > 0)
                {
                    foreach(Registrado reg in registrado)
                    {
                        reg.Nombres = UpdItem.Nombres;
                        reg.Apellidos = UpdItem.Apellidos;
                        reg.NombresCompletos = UpdItem.NombresCompletos;

                        context.SaveChanges();
                    }

                }


            }
        }

        public void UpdateRegistrado2(Registrado UpdItem)
        {
            using (var context = new DBRegistradosContext())
            {
                
                var registrado = context.Registrados.Where(a => a.IdRegistrado == UpdItem.IdRegistrado).FirstOrDefault();

                if (registrado != null)
                {
                    registrado.Apellidos = UpdItem.Apellidos;
                    registrado.NombresCompletos  = UpdItem.NombresCompletos;

                    context.SaveChanges();

                }

            }
        }

        public List<DTOResultSet> SPCargaRegistrados()
        {
            using (var context = new DBRegistradosContext())
            {
                return context.Result.FromSqlRaw("ConsRegistrados").ToList();
            }
        }

        public List<DTOResultSet> SPCargaRegistradosByIdent(string Identificacion)
        {
            using (var context = new DBRegistradosContext())
            {
                return context.Result.FromSqlRaw("ConsRegistradosByIdent {0}", Identificacion).ToList();
            }
        }

    }
}
