using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace TALLER2AE.Models.Database
{
    public partial class DiscosPorBandum
    {
        [Key]
        public int IdDiscoBanda { get; set; }
        public int? IdBanda { get; set; }
        public int? IdDisco { get; set; }
        public DateTime FechaRegistro { get; set; }
        public TimeSpan? HoraRegistro { get; set; }
        public string UsuarioRegistro { get; set; }

        public virtual Bandum IdBandaNavigation { get; set; }
        public virtual Disco IdDiscoNavigation { get; set; }
    }
}
