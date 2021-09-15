namespace bridge_pattern.Implementacion
{
    class AbstraccionSaludoMAYUSCULA : AbstraccionSaludo
    {
        public AbstraccionSaludoMAYUSCULA(ISaludos saludar)
            : base(saludar)
        {
        }

        public override string Saludar(string nombre)
        {
            return base.Saludar(nombre.ToUpper());
        }
    }
}
