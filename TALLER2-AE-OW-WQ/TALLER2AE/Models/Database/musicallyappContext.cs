using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using TALLER2AE.Models.Dto;

#nullable disable

namespace TALLER2AE.Models.Database
{
    public partial class musicallyappContext : DbContext
    {
        public musicallyappContext()
        {
        }

        public musicallyappContext(DbContextOptions<musicallyappContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Bandum> Banda { get; set; }
        public virtual DbSet<Categoria> Categorias { get; set; }
        public virtual DbSet<Disco> Discos { get; set; }
        public virtual DbSet<DiscosPorBandum> DiscosPorBanda { get; set; }
        public virtual DbSet<Tiendum> Tienda { get; set; }
        public virtual DbSet<BandResultSet> Result { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Integrated Security=True;Trusted_Connection=True;Persist Security Info=False;Initial Catalog=musicallyapp;Data Source=srv01451");
            }
        }

        //protected override void OnModelCreating(ModelBuilder modelBuilder)
        //{
        //    modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

        //    modelBuilder.Entity<Bandum>(entity =>
        //    {
        //        entity.HasKey(e => e.IdBanda)
        //            .HasName("PK_IdBanda");

        //        entity.Property(e => e.FechaRegistro)
        //            .HasColumnType("date")
        //            .HasDefaultValueSql("(getdate())");

        //        entity.Property(e => e.Nombre)
        //            .HasMaxLength(100)
        //            .IsUnicode(false);

        //        entity.Property(e => e.UsuarioRegistro)
        //            .HasMaxLength(15)
        //            .IsUnicode(false);
        //    });

        //    modelBuilder.Entity<Categoria>(entity =>
        //    {
        //        entity.HasKey(e => e.IdCategoria)
        //            .HasName("PK_Idcategoria");

        //        entity.Property(e => e.Descripcion)
        //            .HasMaxLength(100)
        //            .IsUnicode(false);
        //    });

        //    modelBuilder.Entity<Disco>(entity =>
        //    {
        //        entity.HasKey(e => e.IdDisco)
        //            .HasName("PK_IdDisco");

        //        entity.Property(e => e.Descripcion)
        //            .HasMaxLength(100)
        //            .IsUnicode(false);

        //        entity.HasOne(d => d.IdCategoriaNavigation)
        //            .WithMany(p => p.Discos)
        //            .HasForeignKey(d => d.IdCategoria)
        //            .HasConstraintName("FK_IdCategoria_Discos");
        //    });

        //    modelBuilder.Entity<DiscosPorBandum>(entity =>
        //    {
        //        entity.HasKey(e => e.IdDiscoBanda)
        //            .HasName("PK_IdDiscoBanda");

        //        entity.Property(e => e.FechaRegistro)
        //            .HasColumnType("date")
        //            .HasDefaultValueSql("(getdate())");

        //        entity.Property(e => e.UsuarioRegistro)
        //            .HasMaxLength(15)
        //            .IsUnicode(false);

        //        entity.HasOne(d => d.IdBandaNavigation)
        //            .WithMany(p => p.DiscosPorBanda)
        //            .HasForeignKey(d => d.IdBanda)
        //            .HasConstraintName("FK_IdBanda");

        //        entity.HasOne(d => d.IdDiscoNavigation)
        //            .WithMany(p => p.DiscosPorBanda)
        //            .HasForeignKey(d => d.IdDisco)
        //            .HasConstraintName("FK_IdDisco");
        //    });

        //    modelBuilder.Entity<Tiendum>(entity =>
        //    {
        //        entity.HasKey(e => e.IdTienda)
        //            .HasName("PK_IdTienda");

        //        entity.Property(e => e.FechaRegistro)
        //            .HasColumnType("date")
        //            .HasDefaultValueSql("(getdate())");

        //        entity.Property(e => e.IdentificacionTienda)
        //            .IsRequired()
        //            .HasMaxLength(14)
        //            .IsUnicode(false);

        //        entity.Property(e => e.NombreTienda)
        //            .IsRequired()
        //            .HasMaxLength(100)
        //            .IsUnicode(false);

        //        entity.Property(e => e.UsuarioRegistro)
        //            .HasMaxLength(15)
        //            .IsUnicode(false);
        //    });

        //    OnModelCreatingPartial(modelBuilder);
        //}

        //partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
