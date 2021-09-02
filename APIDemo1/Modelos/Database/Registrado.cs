using System;
using System.Collections.Generic;

#nullable disable

using System.ComponentModel.DataAnnotations;

namespace APIDemo1.Modelos.Database
{
    public partial class Registrado
    {
        [Key]
        public int IdRegistrado { get; set; }
        public string Identificacion { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string NombresCompletos { get; set; }
    }
}
