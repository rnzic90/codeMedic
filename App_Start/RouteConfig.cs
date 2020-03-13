using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace LekarskaOrdinacijaCodeMedic
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
          routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapMvcAttributeRoutes();
            /* routes.MapRoute("slug_interface", "{*slug}",
             defaults: new
             {
                 controller = "Front",
                 action = "pages_slug_find",
                 slug = UrlParameter.Optional
             }); */

            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Front", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
