using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Interfaces
{
    public partial interface IQuangCaoRepository
    {
        List<QuangCaoModel> GetAllQuangCao();
        bool Create(QuangCaoModel model);
        bool Update(QuangCaoModel model);
        bool Delete( int id);
    }
}
