using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace TALLER2AE.Models.Database
{
    public partial class Tiendum
    {
        [Key]
        public int IdTienda { get; set; }
        public string IdentificacionTienda { get; set; }
        public string NombreTienda { get; set; }
        public DateTime FechaRegistro { get; set; }
        public TimeSpan? HoraRegistro { get; set; }
        public string UsuarioRegistro { get; set; }
    }
}
