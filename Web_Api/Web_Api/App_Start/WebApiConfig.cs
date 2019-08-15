using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Web_Api
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            config.EnableCors();
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
//[EnableCors(origins: "*", headers: "*", methods: "*", SupportsCredentials = true)] 
//var cors = new EnableCorsAttribute(origins: "*",headers: "*",methods: "*");
//config.EnableCors(cors);

// Web API configuration and services
// Web API routes

//config.EnableCors();
