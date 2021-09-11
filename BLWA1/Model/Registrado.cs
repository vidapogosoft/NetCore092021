using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BLWA1.Model
{
    public class Registrado
    {
        public int IdRegistrado { get; set; }
        [Column(TypeName = "varchar(15)"), Required(ErrorMessage = "El campo {0} no puede estar vacío")]
        public string Identificacion { get; set; }
        [Column(TypeName = "varchar(100)"), Required(ErrorMessage = "El campo {0} no puede estar vacío")]
        public string Nombres { get; set; }
        [Column(TypeName = "varchar(100)"), Required(ErrorMessage = "El campo {0} no puede estar vacío")]
        public string Apellidos { get; set; }
        public string NombresCompletos { get; set; }
    }
}
