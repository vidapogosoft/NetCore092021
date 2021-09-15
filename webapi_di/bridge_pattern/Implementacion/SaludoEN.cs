namespace bridge_pattern.Implementacion
{
    class SaludoEN : ISaludos
    {
        public string Hola(string nombre)
        {
            return "Hello " + nombre + "!";
        }
    }
}
