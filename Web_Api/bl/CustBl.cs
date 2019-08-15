using Partner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bl
{
    public static class CustBl
    {
        //static partner_angular_sari_HuminerEntities db = new partner_angular_sari_HuminerEntities();
        public static DTO.CustDTO GetCustById(string id)
        {
            using (partner_angular_sari_HuminerEntities db1 = new partner_angular_sari_HuminerEntities())
            {
                //db1.Configuration.ProxyCreationEnabled = false;
                //db1.Configuration.LazyLoadingEnabled = false;
                var cust = (db1.Customer_tbl.Where(c => c.custId == id).FirstOrDefault());
                return DTO.CustDTO.FromDal(cust);
            }

        }


        public static Boolean Isexsist(string id)
        {
            using (partner_angular_sari_HuminerEntities db1 = new partner_angular_sari_HuminerEntities())
            {
                db1.Configuration.ProxyCreationEnabled = false;
                db1.Configuration.LazyLoadingEnabled = false;
                var cust = (db1.Customer_tbl.Where(c => c.custId == id).FirstOrDefault());
                if (cust!=null)
                    return true;
            }
            return false;

        }
        public static IQueryable<dynamic> GetAllCust()
        {
            using (partner_angular_sari_HuminerEntities db1 = new partner_angular_sari_HuminerEntities())
            {
                db1.Configuration.ProxyCreationEnabled = false;
                db1.Configuration.LazyLoadingEnabled = false;
                IQueryable<dynamic> listCust = db1.Customer_tbl.Select(c => new { custid = c.custId });
                return listCust;
            }
        }
    }
}
