using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebPrueba.Models
{
    public class Productos
    {
        public int id { get; set; }
        [Required(ErrorMessage = "Campo Descripcion requerido"), MaxLength(500)]
        public string descripcion { get; set; }
        [Required(ErrorMessage = "Campo Categoria requerido"), MaxLength(50)]
        public string categoria { get; set; }
        [Required(ErrorMessage = "Campo Proveedor requerido"), MaxLength(100)]
        public string proveedor { get; set; }
        [Required(ErrorMessage = "Campo Marca requerido"), MaxLength(150)]
        public string marca { get; set; }
        [Required(ErrorMessage = "Campo Medidas requerido"), MaxLength(50)]
        public string medidas { get; set; }
        [Required(ErrorMessage = "Campo Cantidad requerido")]
        public int cantidad { get; set; }
        [Required(ErrorMessage = "Campo Precio requerido")]
        [DataType(DataType.Currency)]
        public Decimal precio { get; set; }
    }
}