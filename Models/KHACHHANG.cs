//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Clothes_Shop.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class KHACHHANG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KHACHHANG()
        {
            this.HOADONs = new HashSet<HOADON>();
        }
    
        public int MAKH { get; set; }
        public string HOTEN { get; set; }
        public string TAIKHOAN { get; set; }
        public string MATKHAU { get; set; }
        public string EMAIL { get; set; }
        public string DIACHI { get; set; }
        public string DIENTHOAI { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HOADON> HOADONs { get; set; }
    }
}
