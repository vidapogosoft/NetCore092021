using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Interfaces;
using APIDemo1.Modelos.Database;
using APIDemo1.Modelos.DTO;
using APIDemo1.DataRepository;

namespace APIDemo1.Services
{
    public class ServiceRegistrado : IRegistrados
    {
        public DataRegistrados data = new DataRegistrados();

        public IEnumerable<DTOResultSet> ListSPRegistrados
        {
            get { return data.SPCargaRegistrados();  }
        }

        public IEnumerable<Registrado> ListRegistrados
        {
            get { return data.GetRegistrados(); }
        }

        public void InsertRegistrado(Registrado New)
        {
            New.NombresCompletos = New.Nombres + ' ' + New.Apellidos;

            data.InsertRegistrado(New);
        }

        public void UpdateRegistrado(Registrado UpdItem)
        {
            UpdItem.NombresCompletos = UpdItem.Nombres + ' ' + UpdItem.Apellidos;

            data.UpdateRegistrado(UpdItem);
        }

        public void DeleteRegistrado(Registrado DelItem)
        {
            data.DeleteRegistrado(DelItem);
        }

        public void DeleteRegistrado2(int IdRegistrado)
        {
            data.DeleteRegistrado2(IdRegistrado);
        }


        public IEnumerable<Registrado> ListDatoRegistrado(string Identificacion)
        {
            return data.GetDatoRegistradoByIdent(Identificacion);
        }

        public Registrado ListDatoRegistrado2(int IdRegistrado)
        {
            return data.GetDatoRegistradoById(IdRegistrado);
        }


        public IEnumerable<Registrado> ListDatoRegistradoById(int IdRegistrado, string Identificacion)
        {
            return data.GetDatoRegistradoByIdIdent(IdRegistrado, Identificacion);
        }

    }
}
