using Microsoft.EntityFrameworkCore;
using RP_KM_Taller2.Modelos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Taller1.Modelos.Database;

namespace RP_KM_Taller2.DataRepository
{
    public class DataTienda
    {
        public void InsertaTienda(DTOTienda newItem)
        {
            using (var context = new musicallyappContext())
            {
                    var parametros = new string[] {newItem.IdentificacionTienda, newItem.NombreTienda };
                    var parameters = new Microsoft.Data.SqlClient.SqlParameter[]{
                    new Microsoft.Data.SqlClient.SqlParameter
                    {
                        ParameterName = "@Identificacion",
                        Value = newItem.IdentificacionTienda,
                        SqlDbType = System.Data.SqlDbType.VarChar
                    },new Microsoft.Data.SqlClient.SqlParameter
                    {
                        ParameterName = "@NombreTienda",
                        Value = newItem.NombreTienda,
                        SqlDbType = System.Data.SqlDbType.VarChar
                    }
                };
                    context.Tienda.FromSqlRaw("dbo.INSERTA_TIENDA @Identificacion, @NombreTienda", parameters);

                }
            }

    }
}
