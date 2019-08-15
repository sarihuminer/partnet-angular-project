using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_Api
{
    public class DB
    {
        public static List<Models.Customer> customerList=new List<Models.Customer>() {
            new Models.Customer(){ address= "dfgd", firstName= "sari", lastName= "hu", id= 315013565,memberList=null}
        };
    }
}