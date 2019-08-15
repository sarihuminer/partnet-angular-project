using Partner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bl

{
 public static  class PackageBl
    {
        public static List<DTO.PackageDTO> GetPackageSub(string id)
        {
            using (partner_angular_sari_HuminerEntities db1 = new partner_angular_sari_HuminerEntities())
            {
                //db1.Configuration.ProxyCreationEnabled = false;
                //db1.Configuration.LazyLoadingEnabled = false;
                var pack = db1.PackagesToSubcRibtion_tbl.Where(pts => pts.subcId == id).ToList();
                return  pack.Select(p => DTO.PackageDTO.FromDal(p)).ToList();
                



        }

        }
    }
}
