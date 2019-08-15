using Partner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bl.DTO
{
   public class CustDTO
    {
        public string custFName { get; set; }
        public string custLName { get; set; }
        public string custId { get; set; }
        public string adress { get; set; }

        public List<SubcribtionDTO> Subcribtionlist { get; set; }


        public static CustDTO  FromDal(Customer_tbl c)
        {
            return new CustDTO
            {
                adress = c.adress,
                custFName = c.custFName,
                custId=c.custId,
                custLName=c.custLName,
                Subcribtionlist =
                    c.Subcribtions.ToList().Select(s => SubcribtionDTO.FromDal(s)) .ToList() };
            }
        }

    }


