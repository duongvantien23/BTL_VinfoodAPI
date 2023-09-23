using BusinessLayer.Interfaces;
using DataAccessLayer;
using DataAccessLayer.Interfaces;
using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public partial class QuangCaoBusiness : IQuangCaoBusiness
    {
        private IQuangCaoRepository _res;
        public QuangCaoBusiness(IQuangCaoRepository quangCaoRepository)
        {
            _res = quangCaoRepository;
        }
        public List<QuangCaoModel> GetAllQuangCao()
        {
            return _res.GetAllQuangCao();
        }
        public bool Create(QuangCaoModel model)
        {
            return _res.Create(model);
        }
        public bool Update(QuangCaoModel model)
        {
            return _res.Create(model);
        }
        public bool Delete(int id)
        {
            return _res.Delete(id);
        }
    }
}
