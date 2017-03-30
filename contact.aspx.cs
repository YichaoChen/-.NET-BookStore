using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButtonSignout.Text = "";
        if (Session["username"] != null)
        {
            LabelLastname.Text = (String)Session["username"];
            LinkButtonSignout.Text = "Sign out";

        }
    }

    protected void LinkButtonSignout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["ShopCart"] = null;
        Response.Write("<script language=javascript>alert('Sign out');window.location = 'index.aspx';</script>");

    }


}