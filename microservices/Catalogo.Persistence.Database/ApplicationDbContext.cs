﻿
using Catalogo.Domain;
using Microsoft.EntityFrameworkCore;
using Catalogo.Persistence.Database.Configuration;

namespace Catalogo.Persistence.Database
{
    public class ApplicationDbContext : DbContext
    {

        public ApplicationDbContext(
           DbContextOptions<ApplicationDbContext> options
            )
           : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            // Database schema
            builder.HasDefaultSchema("Catalog");

            // Model Contraints
            ModelConfig(builder);

        }

        public DbSet<Product> Products { get; set; }
        public DbSet<ProductInStock> Stocks { get; set; }

        private void ModelConfig(ModelBuilder modelBuilder)
        {
            new ProductConfiguration(modelBuilder.Entity<Product>());
            new ProductInStockConfiguration(modelBuilder.Entity<ProductInStock>());
        }

    }
}
