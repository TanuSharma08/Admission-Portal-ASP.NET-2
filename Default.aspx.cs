﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null && Session["admin"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        if (Session["user"] != null)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}