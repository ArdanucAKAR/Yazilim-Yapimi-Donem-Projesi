using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yazilim_Yapimi_Donem_Projesi.admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (AuthenticationService.isLoggedIn())
                Response.Redirect("~/Admin/Home");
        }
    }
}