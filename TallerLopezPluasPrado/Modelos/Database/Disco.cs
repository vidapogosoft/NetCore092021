using System;
using System.Collections.Generic;

#nullable disable

namespace TallerLopezPluasPrado.Modelos.Database
{
    public partial class Disco
    {
        public Disco()
        {
            DiscosPorBanda = new HashSet<DiscosPorBandum>();
        }

        public int IdDisco { get; set; }
        public string Descripcion { get; set; }
        public int? IdCategoria { get; set; }

        public virtual Categoria IdCategoriaNavigation { get; set; }
        public virtual ICollection<DiscosPorBandum> DiscosPorBanda { get; set; }
    }
}
