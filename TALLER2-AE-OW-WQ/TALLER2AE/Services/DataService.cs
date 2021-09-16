using System.Collections.Generic;
using TALLER2AE.Models.Database;
using TALLER2AE.Models.Dto;
using TALLER2AE.Repositories;

namespace TALLER2AE.Services
{
    public class DataService
    {
        public DataRepository data = new DataRepository();

        public IEnumerable<Band> GetBands()
        {
            return data.GetBands();
        }

        public Band SaveBand(Band entity)
        {
            return data.SaveBand(entity);
        }
    }
}
