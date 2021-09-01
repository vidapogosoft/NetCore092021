using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace APIDemo1.Modelos.Database
{
    public partial class DBRegistradosContext : DbContext
    {
        public DBRegistradosContext()
        {
        }

        public DBRegistradosContext(DbContextOptions<DBRegistradosContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Registrado> Registrados { get; set; }


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("User= sa; Password= Ctek2314;Persist Security Info=False;Initial Catalog=DBRegistrados;Data Source=(local)\\S19");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Modern_Spanish_CI_AI");

            modelBuilder.Entity<Registrado>(entity =>
            {
                entity.HasKey(e => e.IdRegistrado)
                    .HasName("PK__Registra__0601106F264631BB");

                entity.Property(e => e.Apellidos)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.Identificacion)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Nombres)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.NombresCompletos)
                    .HasMaxLength(400)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
