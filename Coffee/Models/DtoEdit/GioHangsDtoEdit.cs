
using Coffee.Models.DtoEdit;
using System.ComponentModel.DataAnnotations.Schema;


namespace Coffee_62134455.Models.DtoEdit
{
    /// <summary>
    /// Class này hiển thị thêm các thông tin trong giỏ hàng như tên, giá,...
    /// </summary>
    [NotMapped]
    public class GioHangsDtoEdit: DonHangsDtoEdit
    {
        public string TenSanPham { get; set; }
    }
}