using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using APIDemo1.Interfaces;
using APIDemo1.Modelos.DTO;
using APIDemo1.DataRepository;


namespace APIDemo1.Services
{
    public class DTOServiceRegistrado : IDTORegistrados
    {

        public DTODataRegistrados data = new DTODataRegistrados();

        public IEnumerable<DTORegistrado> ListRegistrados
        {
             get { return data.GetRegistrados(); }
        }

       
        public IEnumerable<DTORegistrado> ListDatoRegistrado(string Identificacion)
        {
            return data.GetDatoRegistradoByIdent(Identificacion);
        }

        public IEnumerable<DTORegistrado> ListDatoRegistradoById(int IdRegistrado, string Identificacion)
        {
            return data.GetDatoRegistradoByIdIdent(IdRegistrado, Identificacion);
        }

    }
}
