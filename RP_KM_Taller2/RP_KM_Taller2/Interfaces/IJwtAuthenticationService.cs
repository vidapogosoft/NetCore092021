using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RP_KM_Taller2.Interfaces
{
    public interface IJwtAuthenticationService
    {
        string Authenticate(string username, string password);
    }
}
