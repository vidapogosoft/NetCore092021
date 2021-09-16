using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace TallerLopezPluasPrado.Modelos.DTO
{
    public class DTOResultSetCliente
    {
        [Key]
        public int IdCliente { get; set; }
        public string IdentificacionCliente { get; set; }
        public string NombreCliente { get; set; }
    }
}
