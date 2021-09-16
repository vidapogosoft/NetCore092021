using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


using TallerLopezPluasPrado.Interfaces;
using TallerLopezPluasPrado.DataRepository;
using TallerLopezPluasPrado.Modelos.Database;
using TallerLopezPluasPrado.Modelos.DTO;

namespace TallerLopezPluasPrado.Services
{
    public class ServicesClientes : IClientes
    {
        public DataClientes data = new DataClientes();

        public List<DTOResultSetCliente> SPCreaClientes(string idCliente, string nomCliente)
        {
            //New.NombresCompletos = New.Nombres + ' ' + New.Apellidos;
            return 
            data.SPCreaClientes(idCliente, nomCliente);
        }

        
    }
}
