using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace TALLER2AE.Models.Database
{
    public partial class Disco
    {
        public Disco()
        {
            DiscosPorBanda = new HashSet<DiscosPorBandum>();
        }

        
        [Key]
        public int IdDisco { get; set; }
        public string Descripcion { get; set; }
        public int? IdCategoria { get; set; }

        public virtual Categoria IdCategoriaNavigation { get; set; }
        public virtual ICollection<DiscosPorBandum> DiscosPorBanda { get; set; }
    }
}
