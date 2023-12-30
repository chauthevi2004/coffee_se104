using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Coffee.Models
{
    public partial class DbContextEntity : DbContext
    {
        public DbContextEntity()
            : base("name=DbContextEntity")
        {
        }

        public virtual DbSet<ChiTietDonHang> ChiTietDonHangs { get; set; }
        public virtual DbSet<DanhMuc> DanhMucs { get; set; }
        public virtual DbSet<DonHang> DonHangs { get; set; }
        public virtual DbSet<SanPham> SanPhams { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ChiTietDonHang>()
                .Property(e => e.DonGia)
                .HasPrecision(10, 2);

            modelBuilder.Entity<ChiTietDonHang>()
                .Property(e => e.Size)
                .IsUnicode(false);

            modelBuilder.Entity<DanhMuc>()
                .HasMany(e => e.SanPhams)
                .WithOptional(e => e.DanhMuc)
                .HasForeignKey(e => e.id_danhmuc)
                .WillCascadeOnDelete();

            modelBuilder.Entity<DonHang>()
                .HasMany(e => e.ChiTietDonHangs)
                .WithOptional(e => e.DonHang)
                .HasForeignKey(e => e.id_donhang)
                .WillCascadeOnDelete();

            modelBuilder.Entity<SanPham>()
                .Property(e => e.Gia)
                .HasPrecision(10, 2);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.ChiTietDonHangs)
                .WithOptional(e => e.SanPham)
                .HasForeignKey(e => e.id_sanpham)
                .WillCascadeOnDelete();
        }
    }
}
