using BusinessLayer.Interfaces;
using DataModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BTL_VinfoodAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class QuangCaoController : ControllerBase
    {
        private IQuangCaoBusiness _QuangCaoBus;
        public QuangCaoController(IQuangCaoBusiness quangcao)
        {
            _QuangCaoBus = quangcao;
        }
        [Route("get-all-quangcao")]
        [HttpGet]
        public IEnumerable<QuangCaoModel> GetQuangCaoModel()
        {
            return _QuangCaoBus.GetAllQuangCao();
        }
        [Route("create-quangcao")]
        [HttpPost]
        public bool Create(QuangCaoModel model)
        {
            return _QuangCaoBus.Create(model);
        }
        [Route("update-quangcao")]
        [HttpPut]
        public bool Update(QuangCaoModel model)
        {
            return _QuangCaoBus.Update(model);
        }
        [Route("delete-quangcao")]
        [HttpDelete]
        public bool Delete(int id)
        {
            return _QuangCaoBus.Delete(id);
        }
    }
}
