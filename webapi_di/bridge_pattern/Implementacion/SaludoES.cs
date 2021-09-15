namespace bridge_pattern.Implementacion
{
    class SaludoES : ISaludos
    {
        public string Hola(string nombre)
        {
            return "Hola " + nombre + "!";
        }
    }
}
