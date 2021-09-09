using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BLWA1.Repositorio
{
    public interface IRegistradoRepositorio
    {
        Task<HttpResponseWrapper<T>> GetRegistrados<T>(string url);
    }
}
