using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace TALLER2AE.Models.Database
{
    public partial class Categoria
    {
        public Categoria()
        {
            Discos = new HashSet<Disco>();
        }

        [Key]
        public int IdCategoria { get; set; }
        public string Descripcion { get; set; }

        public virtual ICollection<Disco> Discos { get; set; }
    }
}
