using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Yazilim_Yapimi_Donem_Projesi
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        public void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("MemberLoginDefault", "", "~/Login.aspx");
            routes.MapPageRoute("MemberLogin", "Login", "~/Login.aspx");
            routes.MapPageRoute("MemberHome", "Home", "~/Index.aspx");
            routes.MapPageRoute("MemberGame", "Game", "~/Game.aspx");

            routes.MapPageRoute("AdminLoginDefault", "Admin", "~/admin/Login.aspx");
            routes.MapPageRoute("AdminLogin", "Admin/Login", "~/admin/Login.aspx");
            routes.MapPageRoute("AdminHome", "Admin/Home", "~/admin/Index.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}