using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yazilim_Yapimi_Donem_Projesi
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Member a = new Member()
            {
                Username = "VolkanKAHRAMAN",
                Password = "1"
            };
            AuthenticationService.Login(a);
            Response.Write(Session["Username"] != null ? Session["Username"].ToString() : "BULUNAMADI");
        }
    }
}