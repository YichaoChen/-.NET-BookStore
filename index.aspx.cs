using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["category"] = "art";
        Response.Redirect("goodlist.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["category"] = "biography";
        Response.Redirect("goodlist.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["category"] = "business";
        Response.Redirect("goodlist.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["category"] = "computers & technology";
        Response.Redirect("goodlist.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["category"] = "entertainment";
        Response.Redirect("goodlist.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["category"] = "history";
        Response.Redirect("goodlist.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Session["category"] = "literature & fiction";
        Response.Redirect("goodlist.aspx");
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Session["category"] = "travel";
        Response.Redirect("goodlist.aspx");
    }

    protected void LinkButtonSignout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["ShopCart"] = null;
        Response.Write("<script language=javascript>alert('Sign out');window.location = 'index.aspx';</script>");
    }


    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        Session["search"] = TextBoxSearch.Text;
        Response.Redirect("search.aspx");
    }
}

public class Session
{
}