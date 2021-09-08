using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebPrueba.Models
{
    public class Registrado
    {
        public int IdRegistrado { get; set; }
        public string Identificacion { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string NombresCompletos { get; set; }
    }
}