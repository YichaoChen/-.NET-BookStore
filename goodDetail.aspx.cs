using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int stock;

    int qBuy;

    Hashtable addgoods;

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
        String find = "SELECT * FROM [books] where isbn = '" + Session["good"].ToString() + "'";
        SqlDataAdapter da = new SqlDataAdapter(find, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);

        Label1.Text= ds.Tables[0].Rows[0][1].ToString();
        Label2.Text= ds.Tables[0].Rows[0][0].ToString();
        Label3.Text = ds.Tables[0].Rows[0][3].ToString();
        Label4.Text = ds.Tables[0].Rows[0][4].ToString();
        Label5.Text = ds.Tables[0].Rows[0][7].ToString();
        Label7.Text = ds.Tables[0].Rows[0][8].ToString();
        Image1.ImageUrl = ds.Tables[0].Rows[0][9].ToString();

        int a = Convert.ToInt32(Label5.Text);
        stock = a;



        

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



    protected void Button1_Click(object sender, EventArgs e)
    {

        

        if (Session["username"] == null)
        {
            Response.Write("<script language=javascript>alert('Please sign in!');window.location = 'signin.aspx';</script>");
        }

        string pattern = "^[0-9]{1,}$";
        System.Text.RegularExpressions.Regex reg = new System.Text.RegularExpressions.Regex(pattern);
        bool b = reg.IsMatch(TextBoxQ.Text);


        if (b == false)
        {
            Label6.Text = "Must enter a number!";
        }
        else
        {
            int c = Convert.ToInt32(TextBoxQ.Text);
            qBuy = c;


            if (qBuy > stock)
            {
                Label6.Text = "Out of stock!";
                qBuy = 0;
            }
            else
            {
                Label6.Text = "";
                Session["Checkout"] = Label2.Text;
                Response.Write("<script language=javascript>alert('Add item!');window.location = 'cart.aspx';</script>");
                Session["itemQuantity"] = qBuy;
            }

        }

        if (Session["ShopCart"] == null)
        {
            addgoods = new Hashtable();
            addgoods.Add(Session["good"], qBuy);
            Session["ShopCart"] = addgoods;
        }
        else
        {
            addgoods = (Hashtable)Session["ShopCart"];
            if (addgoods.Contains(Session["good"]))
            {
                int count = Convert.ToInt32(addgoods[Session["good"]]);
                addgoods[Session["good"]] = (count + qBuy);
            }
            else
                addgoods.Add(Session["good"], qBuy);
        }

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