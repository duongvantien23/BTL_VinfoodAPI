using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Interfaces
{
    public partial interface IKhachHangBusiness
    {
        KhachHangModel GetDatabyID(string id);
        bool Create(KhachHangModel model);
        bool Update(KhachHangModel model);
        public List<KhachHangModel> Search(int pageIndex, int pageSize, out long total, string ten_khach, string dia_chi);
    }
}
