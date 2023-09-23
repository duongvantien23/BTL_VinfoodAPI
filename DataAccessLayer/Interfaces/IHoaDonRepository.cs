using Azure;
using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Interfaces
{
    public partial interface IHoaDonRepository
    {
        public bool Create(HoaDonModel model);
        public bool Update(HoaDonModel model);
        List<HoaDonModel> Search(int page,int pageSize, out long total,string ten_khach,DateTime? fr_NgayTao, DateTime? to_NgayTao);
    }
}
