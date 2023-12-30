
using System.ComponentModel.DataAnnotations.Schema;


namespace Coffee.Models.DtoEdit
{
    /// <summary>
    /// Class này hiển thị thêm các thông tin trong giỏ hàng như tên, giá,...
    /// </summary>
    [NotMapped]
    public class GioHangsDtoEdit : ChiTietDonHangsDtoEdit
    {
        public new string TenSanPham { get; set; }
    }
}