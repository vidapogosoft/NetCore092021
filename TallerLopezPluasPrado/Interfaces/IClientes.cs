using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using TallerLopezPluasPrado.Modelos.Database;
using TallerLopezPluasPrado.Modelos.DTO;

namespace TallerLopezPluasPrado.Interfaces
{
    public interface IClientes
    {
        List<DTOResultSetCliente> SPCreaClientes(string idCliente, string nomCliente);
    }
}
