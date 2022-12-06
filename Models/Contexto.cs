using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace LocarFacil.Models
{
    public partial class Contexto : DbContext
    {
        public virtual DbSet<Bairros> Bairros { get; set; }
        public virtual DbSet<Cidades> Cidades { get; set; }
        public virtual DbSet<Estados> Estados { get; set; }
        public virtual DbSet<Imovel> Imovel { get; set; }
        public virtual DbSet<ImovelFotos> ImovelFotos { get; set; }
        public virtual DbSet<TipoImovel> TipoImovel { get; set; }
        public virtual DbSet<UsuarioLocacao> UsuarioLocacao { get; set; }


        public Contexto()
        {
            //options
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {               
                optionsBuilder.UseSqlServer("Data Source=localhost\\sql2019;Initial Catalog=locaimovel;Persist Security Info=True;User ID=sa;Password=123456;Trust Server Certificate=True;Command Timeout=300");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Bairros>(entity =>
            {
                entity.Property(e => e.Nome)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdCidadeNavigation)
                    .WithMany(p => p.Bairros)
                    .HasForeignKey(d => d.IdCidade)
                    .HasConstraintName("FK_Bairros_Cidades");
            });

            modelBuilder.Entity<Cidades>(entity =>
            {
                entity.Property(e => e.Ibge).HasColumnName("IBGE");

                entity.Property(e => e.Nome)
                    .HasMaxLength(150)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdEstadosNavigation)
                    .WithMany(p => p.Cidades)
                    .HasForeignKey(d => d.IdEstados)
                    .HasConstraintName("FK_Cidades_Estados");
            });

            modelBuilder.Entity<Estados>(entity =>
            {
                entity.Property(e => e.Nome)
                    .HasMaxLength(150)
                    .IsUnicode(false);

                entity.Property(e => e.UF)
                    .HasMaxLength(2)
                    .IsUnicode(false)
                    .HasColumnName("UF");
            });

            modelBuilder.Entity<Imovel>(entity =>
            {
                entity.Property(e => e.Bairro)
                    .IsRequired()
                    .HasMaxLength(225)
                    .IsUnicode(false);

                entity.Property(e => e.Cep)
                    .IsRequired()
                    .HasMaxLength(45)
                    .IsUnicode(false);

                entity.Property(e => e.Cidade)
                    .IsRequired()
                    .HasMaxLength(150)
                    .IsUnicode(false);

                entity.Property(e => e.Complemento)
                    .HasMaxLength(45)
                    .IsUnicode(false);

                entity.Property(e => e.Descricao)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Detalhamento)
                    .IsRequired()
                    .HasMaxLength(1000)
                    .IsUnicode(false);

                entity.Property(e => e.LinkFoto)
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.Logradouro)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Numero)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Tamanho).HasColumnType("decimal(8, 2)");

                entity.Property(e => e.UF)
                    .IsRequired()
                    .HasMaxLength(2)
                    .IsUnicode(false)
                    .HasColumnName("UF");

                entity.Property(e => e.VrAluguel).HasColumnType("decimal(18, 2)");

                entity.HasOne(d => d.IdLocadorNavigation)
                    .WithMany(p => p.ImovelIdLocadorNavigation)
                    .HasForeignKey(d => d.IdLocador)
                    .HasConstraintName("FK_IdLocador_IdUsuarioLocacao");

                entity.HasOne(d => d.IdLocatarioNavigation)
                    .WithMany(p => p.ImovelIdLocatarioNavigation)
                    .HasForeignKey(d => d.IdLocatario)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_IdLocatario_IdUsuarioLocacao");

                entity.HasOne(d => d.IdTipoImovelNavigation)
                    .WithMany(p => p.Imovel)
                    .HasForeignKey(d => d.IdTipoImovel)
                    .HasConstraintName("FK_Imovel_TipoImovel");
            });

            modelBuilder.Entity<ImovelFotos>(entity =>
            {
                entity.Property(e => e.Detalhamento).HasColumnType("ntext");

                entity.Property(e => e.LinkFoto)
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.Titulo)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdMovelNavigation)
                    .WithMany(p => p.ImovelFotos)
                    .HasForeignKey(d => d.IdMovel)
                    .HasConstraintName("FK_ImovelFotos_Imovel");
            });

            modelBuilder.Entity<TipoImovel>(entity =>
            {
                entity.Property(e => e.Nome)
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<UsuarioLocacao>(entity =>
            {
                entity.HasIndex(e => new { e.Nome, e.Email }, "Nome_UNIQUE")
                    .IsUnique();

                entity.Property(e => e.Celular)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Documento)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("email");

                entity.Property(e => e.Nome)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Senha)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.TelefoneFixo)
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
