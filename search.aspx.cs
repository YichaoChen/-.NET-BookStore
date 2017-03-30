using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page 
{
    DataSet reserved;

    protected void Page_Load(object sender, EventArgs e)
    {

        LinkButtonSignout.Text = "";
        if (Session["username"] != null)
        {
            LabelLastname.Text = (String)Session["username"];
            LinkButtonSignout.Text = "Sign out";

        }

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\yicha\\Desktop\\new bookstore\\App_Data\\bookstore.mdf;Integrated Security=True");
        conn.Open();
        String find = "SELECT * FROM [books] where UPPER(title) Like UPPER('%" + Session["search"].ToString() + "%') or isbn Like UPPER('%" + Session["search"].ToString() + "%')";
        SqlDataAdapter da = new SqlDataAdapter(find, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        reserved = ds;

        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script language=javascript>alert('No result!');window.location = 'index.aspx';</script>");
        }
        else
        {

            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            Label6.Text = ds.Tables[0].Rows[0][3].ToString();
            Label11.Text = ds.Tables[0].Rows[0][4].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][9].ToString();

       

            if (ds.Tables[0].Rows.Count > 1)
            {
                Label2.Text = ds.Tables[0].Rows[1][1].ToString();
                Label7.Text = ds.Tables[0].Rows[1][3].ToString();
                Label12.Text = ds.Tables[0].Rows[1][4].ToString();
                Image2.ImageUrl = ds.Tables[0].Rows[1][9].ToString();


                if (ds.Tables[0].Rows.Count > 2)
                {
                    Label3.Text = ds.Tables[0].Rows[2][1].ToString();
                    Label8.Text = ds.Tables[0].Rows[2][3].ToString();
                    Label13.Text = ds.Tables[0].Rows[2][4].ToString();
                    Image3.ImageUrl = ds.Tables[0].Rows[2][9].ToString();


                    if (ds.Tables[0].Rows.Count > 3)
                    {
                        Label4.Text = ds.Tables[0].Rows[3][1].ToString();
                        Label9.Text = ds.Tables[0].Rows[3][3].ToString();
                        Label14.Text = ds.Tables[0].Rows[3][4].ToString();
                        Image4.ImageUrl = ds.Tables[0].Rows[3][9].ToString();


                        if (ds.Tables[0].Rows.Count > 4)
                        {
                            Label5.Text = ds.Tables[0].Rows[4][1].ToString();
                            Label10.Text = ds.Tables[0].Rows[4][3].ToString();
                            Label15.Text = ds.Tables[0].Rows[4][4].ToString();
                            Image5.ImageUrl = ds.Tables[0].Rows[4][9].ToString();


                        }

                        else
                        {
                            Label5.Text = "";
                            Label10.Text = "";
                            Label15.Text = "";
                            LinkButton13.Text = "";
                            Image5.Visible = false;

                        }

                    }
                    else
                    {

                        Label4.Text = "";
                        Label9.Text = "";
                        Label14.Text = "";
                        LinkButton12.Text = "";
                        Image4.Visible = false;


                        Label5.Text = "";
                        Label10.Text = "";
                        Label15.Text = "";
                        LinkButton13.Text = "";
                        Image5.Visible = false;

                    }
                }
                else
                {
                    Label3.Text = "";
                    Label8.Text = "";
                    Label13.Text = "";
                    LinkButton11.Text = "";
                    Image3.Visible = false;

                    Label4.Text = "";
                    Label9.Text = "";
                    Label14.Text = "";
                    LinkButton12.Text = "";
                    Image4.Visible = false;


                    Label5.Text = "";
                    Label10.Text = "";
                    Label15.Text = "";
                    LinkButton13.Text = "";
                    Image5.Visible = false;
                }
            }
            else
            {
                Label2.Text = "";
                Label7.Text = "";
                Label12.Text = "";
                LinkButton10.Text = "";
                Image2.Visible = false;

                Label3.Text = "";
                Label8.Text = "";
                Label13.Text = "";
                LinkButton11.Text = "";
                Image3.Visible = false;

                Label4.Text = "";
                Label9.Text = "";
                Label14.Text = "";
                LinkButton12.Text = "";
                Image4.Visible = false;


                Label5.Text = "";
                Label10.Text = "";
                Label15.Text = "";
                LinkButton13.Text = "";
                Image5.Visible = false;
            }
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


    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Session["good"] = reserved.Tables[0].Rows[0][0].ToString();
        Response.Redirect("goodDetail.aspx");
    }

    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Session["good"] = reserved.Tables[0].Rows[1][0].ToString();
        Response.Redirect("goodDetail.aspx");
    }

    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Session["good"] = reserved.Tables[0].Rows[2][0].ToString();
        Response.Redirect("goodDetail.aspx");
    }


    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Session["good"] = reserved.Tables[0].Rows[3][0].ToString();
        Response.Redirect("goodDetail.aspx");
    }


    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Session["good"] = reserved.Tables[0].Rows[4][0].ToString();
        Response.Redirect("goodDetail.aspx");
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