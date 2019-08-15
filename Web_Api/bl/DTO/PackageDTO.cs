using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Partner;
namespace bl.DTO
{
    public class PackageDTO
    {
        public string packName { get; set; }
        public string packId { get; set; }
        public Nullable<int> packQty { get; set; }
        public Nullable<int> Survivor { get; set; }
        public static PackageDTO FromDal(PackagesToSubcRibtion_tbl p)
        {
            return new PackageDTO
            {
                packId = p.packId,
                packName = p.Package_tbl.packName,
                packQty = p.Package_tbl.packQty,
               Survivor=p.usingMinitues
            };
            }
        
}
    }
