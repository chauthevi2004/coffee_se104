namespace Coffee.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class TaiKhoan
    {
        public int id { get; set; }

        [StringLength(50)]
        public string TenNguoiDung { get; set; }

        [StringLength(50)]
        public string Username { get; set; }

        [StringLength(100)]
        public string Password { get; set; }

        public int? VaiTro { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? GioiTinh { get; set; }
    }
}
