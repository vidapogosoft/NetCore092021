using System.ComponentModel.DataAnnotations;

namespace TALLER2AE.Models.Dto
{
    public class BandResultSet
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Username { get; set; }
    }
}
