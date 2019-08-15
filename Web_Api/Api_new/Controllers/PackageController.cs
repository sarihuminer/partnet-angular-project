using bl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Api_new.Controllers
{
    [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*", SupportsCredentials = true)]
    public class PackageController : ApiController
    {
            //DI service unity
            public PackageController()
            {

            }
            [HttpGet]
        [Route("Package/getPackageSub/{id}")]
        public IHttpActionResult getPackageSub([FromUri] string id)
        {
            return Ok(PackageBl.GetPackageSub(id));
        }
    }
}
