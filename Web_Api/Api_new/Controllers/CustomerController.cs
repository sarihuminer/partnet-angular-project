using bl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using Web_Api.Models;

namespace Web_Api.Controllers
{
    //הרשאות גישה
    [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*", SupportsCredentials = true)] 
    public class CustomerController : ApiController
    {
        //DI service unity
        public CustomerController()
        {

        }
        
        [HttpGet]
        [Route("customer/Isexsist/{id}")]
        public IHttpActionResult isexsist([FromUri] string id)
        {
            return Ok(CustBl.Isexsist(id));
        }
        [HttpGet]
        [Route("customer/getCustomerById/{id}")]
        public IHttpActionResult getUserByID([FromUri] string id)
        {
            return Ok(CustBl.GetCustById(id));
        }
        [HttpGet]
        [Route("customer/getall")]
        public IHttpActionResult GetAllCourses()
        {
       
            return Ok(CustBl.GetAllCust());
        }
        //[HttpGet]
        //[Route("customer/getCustomerByIdb/{id}")]
        //public IHttpActionResult getUserByIDb([FromUri] int id)
        //{
        //    return Ok(DB.customerList.Any(x => x.id == id));
        //}

        [HttpPost]
        [Route("customer/addCustomer")]
        public IHttpActionResult addCustomer([FromBody] Customer customer)
        {
            try
            {
                DB.customerList.Add(customer);
                return Ok();
            }
            catch(Exception ex)
            {
                return NotFound();
            }
           
        }

        
        
    }
}
