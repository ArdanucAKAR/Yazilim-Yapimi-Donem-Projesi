﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yazilim_Yapimi_Donem_Projesi.admin
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!AuthenticationService.isLoggedIn() || Session["UserType"].ToString() != "Authorized")
                Response.Redirect("~/Admin/Login");
        }
    }
}