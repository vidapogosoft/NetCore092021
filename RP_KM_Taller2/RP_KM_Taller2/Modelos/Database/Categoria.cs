using System;
using System.Collections.Generic;

#nullable disable

namespace Taller1.Modelos.Database
{
    public partial class Categoria
    {
        public Categoria()
        {
            Discos = new HashSet<Disco>();
        }

        public int IdCategoria { get; set; }
        public string Descripcion { get; set; }

        public virtual ICollection<Disco> Discos { get; set; }
    }
}
