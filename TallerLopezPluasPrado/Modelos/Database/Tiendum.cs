using System;
using System.Collections.Generic;

#nullable disable

namespace TallerLopezPluasPrado.Modelos.Database
{
    public partial class Tiendum
    {
        public int IdTienda { get; set; }
        public string IdentificacionTienda { get; set; }
        public string NombreTienda { get; set; }
        public DateTime FechaRegistro { get; set; }
        public TimeSpan? HoraRegistro { get; set; }
        public string UsuarioRegistro { get; set; }
    }
}
