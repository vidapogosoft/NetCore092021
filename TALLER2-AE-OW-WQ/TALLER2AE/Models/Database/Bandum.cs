using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace TALLER2AE.Models.Database
{
    public partial class Bandum
    {
        public Bandum()
        {
            DiscosPorBanda = new HashSet<DiscosPorBandum>();
        }

        [Key]
        public int IdBanda { get; set; }
        public string Nombre { get; set; }
        public DateTime FechaRegistro { get; set; }
        public TimeSpan? HoraRegistro { get; set; }
        public string UsuarioRegistro { get; set; }

        public virtual ICollection<DiscosPorBandum> DiscosPorBanda { get; set; }
    }
}
