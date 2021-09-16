using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using TALLER2AE.Models.Database;
using TALLER2AE.Models.Dto;

namespace TALLER2AE.Repositories
{
    public class DataRepository
    {
        public List<Band> GetBands()
        {
            using (var context = new musicallyappContext())
            {
                return context.Banda.Select(x => new Band
                {
                    Username = x.UsuarioRegistro,
                    Name = x.Nombre
                }).ToList();
            }
        }

        public Band SaveBand(Band entity)
        {
            using (var context = new musicallyappContext())
            {
                var result = context.Result.FromSqlRaw("EXECUTE sp_Banda {0}, {1}", entity.Name, entity.Username)
                    .AsEnumerable()
                    .Select(x => new Band
                    {
                        Username = x.Username,
                        Name = x.Name
                    }
                ).FirstOrDefault();

                return result;
            }
        }
    }
}
