using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace DemoEx0605.Models;

public partial class DemoExamen0605Context : DbContext
{
    public DemoExamen0605Context()
    {
    }

    public DemoExamen0605Context(DbContextOptions<DemoExamen0605Context> options)
        : base(options)
    {
    }

    public virtual DbSet<Partner> Partners { get; set; }

    public virtual DbSet<PartnerProduct> PartnerProducts { get; set; }

    public virtual DbSet<PartnerType> PartnerTypes { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<ProductType> ProductTypes { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=(localdb)\\MSSQLLocalDB;Database=DemoExamen0605;Trusted_Connection=true;TrustServerCertificate=true;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Partner>(entity =>
        {
            entity.Property(e => e.PartnerId).HasColumnName("PartnerID");
            entity.Property(e => e.Director).HasMaxLength(200);
            entity.Property(e => e.Email).HasMaxLength(200);
            entity.Property(e => e.LawAdress).HasMaxLength(200);
            entity.Property(e => e.NamePartner).HasMaxLength(200);
            entity.Property(e => e.Phone).HasMaxLength(200);
            entity.Property(e => e.TypePartnerId).HasColumnName("TypePartnerID");

            entity.HasOne(d => d.TypePartner).WithMany(p => p.Partners)
                .HasForeignKey(d => d.TypePartnerId)
                .HasConstraintName("FK_Partners_PartnerType");
        });

        modelBuilder.Entity<PartnerProduct>(entity =>
        {
            entity.Property(e => e.PartnerProductId).HasColumnName("PartnerProductID");
            entity.Property(e => e.DateSale).HasMaxLength(200);
            entity.Property(e => e.NamePartner).HasMaxLength(200);
            entity.Property(e => e.PartnerId).HasColumnName("PartnerID");
            entity.Property(e => e.ProductId).HasColumnName("ProductID");
            entity.Property(e => e.Production).HasMaxLength(200);

            entity.HasOne(d => d.Partner).WithMany(p => p.PartnerProducts)
                .HasForeignKey(d => d.PartnerId)
                .HasConstraintName("FK_PartnerProducts_Partners");

            entity.HasOne(d => d.Product).WithMany(p => p.PartnerProducts)
                .HasForeignKey(d => d.ProductId)
                .HasConstraintName("FK_PartnerProducts_Products");
        });

        modelBuilder.Entity<PartnerType>(entity =>
        {
            entity.HasKey(e => e.TypePartnerId);

            entity.ToTable("PartnerType");

            entity.Property(e => e.TypePartnerId).HasColumnName("TypePartnerID");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.Property(e => e.ProductId).HasColumnName("ProductID");
            entity.Property(e => e.Articul).HasMaxLength(200);
            entity.Property(e => e.MinPriceForPartner).HasColumnType("money");
            entity.Property(e => e.NameProduction).HasMaxLength(200);
            entity.Property(e => e.ProductTypeId).HasColumnName("ProductTypeID");
            entity.Property(e => e.TypeProduction).HasMaxLength(200);

            entity.HasOne(d => d.ProductType).WithMany(p => p.Products)
                .HasForeignKey(d => d.ProductTypeId)
                .HasConstraintName("FK_Products_ProductType");
        });

        modelBuilder.Entity<ProductType>(entity =>
        {
            entity.ToTable("ProductType");

            entity.Property(e => e.ProductTypeId).HasColumnName("ProductTypeID");
            entity.Property(e => e.Coefficient).HasMaxLength(100);
            entity.Property(e => e.TypeProduction).HasMaxLength(100);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
