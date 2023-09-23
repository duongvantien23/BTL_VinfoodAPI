using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Interfaces
{
  public partial interface IQuangCaoBusiness
    {
        List<QuangCaoModel> GetAllQuangCao();
        bool Create(QuangCaoModel model);
        bool Update(QuangCaoModel model);
        bool Delete(int id);
    }
}
