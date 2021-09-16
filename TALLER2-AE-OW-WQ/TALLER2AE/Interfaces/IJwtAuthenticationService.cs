namespace TALLER2AE.Interfaces
{
    public interface IJwtAuthenticationService
    {
        string Authenticate(string username, string password);
    }
}
