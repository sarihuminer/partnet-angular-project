using Partner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bl.DTO
{
    public class SubcribtionDTO
    {
        public string subcId { get; set; }
        public string subsName { get; set; }
        public static SubcribtionDTO FromDal(Subcribtion s)
        {
            return new SubcribtionDTO
            {
                subcId=s.subcId,
                subsName=s.subsName,
            };
        }


    }
    }

