using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using TallerLopezPluasPrado.Modelos.Database;
using TallerLopezPluasPrado.Modelos.DTO;
using Microsoft.EntityFrameworkCore;

namespace TallerLopezPluasPrado.DataRepository
{
    public class DataClientes
    {
        /*public void InsertRegistrado(Cliente NewItem)
        {
            using (var context = new musicallyappContext())
            {
                context.Clientes.Add(NewItem);
                context.SaveChanges();
            }
        }*/

        public List<DTOResultSetCliente> SPCreaClientes(string idCliente, string nomCliente)
        {
            using (var context = new musicallyappContext())
            {
                var parameters = new Microsoft.Data.SqlClient.SqlParameter[]{
                    new Microsoft.Data.SqlClient.SqlParameter
                    {
                        ParameterName = "@IdentificacionCliente",
                        Value = idCliente,
                        SqlDbType = System.Data.SqlDbType.VarChar
                    },new Microsoft.Data.SqlClient.SqlParameter
                    {
                        ParameterName = "@NombreCliente",
                        Value = nomCliente,
                        SqlDbType = System.Data.SqlDbType.Char
                    }
                };
                return context.Result.FromSqlRaw("dbo.InsertCliente @IdentificacionCliente, @NombreCliente", parameters).ToList();

            }
        }
    }
}
