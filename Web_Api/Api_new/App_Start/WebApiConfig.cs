using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Http.Cors;
namespace Api_new
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
        //public static void register(httpconfiguration config)
        //{
        //    // web api configuration and services

        //    // web api routes
        //    config.maphttpattributeroutes();

        //    config.routes.maphttproute(
        //        name: "defaultapi",
        //        routetemplate: "api/{controller}/{id}",
        //        defaults: new { id = routeparameter.optional }
        //    );
        //}
    }
}
