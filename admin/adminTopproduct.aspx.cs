using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminTopproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminTotalsales.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminReginal.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminTopproduct.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminLoyal.aspx");
    }



    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminVieworders.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminViewandDeleteP.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminAdd.aspx");
    }

    protected void ButtonSignOut_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("adminSignin.aspx");
    }
}