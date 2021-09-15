namespace bridge_pattern.Implementacion
{
    class AbstraccionSaludo
    {
        private readonly ISaludos _saludar;

        public AbstraccionSaludo(ISaludos saludar)
        {
            _saludar = saludar;
        }

        public virtual string Saludar(string nombre)
        {
            return _saludar.Hola(nombre);
        }
    }
}
