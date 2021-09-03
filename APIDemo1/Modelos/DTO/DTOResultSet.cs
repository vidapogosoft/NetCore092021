using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace APIDemo1.Modelos.DTO
{
    public class DTOResultSet
    {
        [Key]
        public int IdRegistrado { get; set; }
        public string Identificacion { get; set; }
        public string NombresCompletos { get; set; }

    }
}
