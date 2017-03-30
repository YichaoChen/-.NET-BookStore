using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        LinkButtonSignout.Text = "";
        if (Session["username"] != null)
        {
            LabelLastname.Text = (String)Session["username"];
            LinkButtonSignout.Text = "Sign out";

        }
    }

    protected void ButtonSignIn_Click(object sender, EventArgs e)
    {
        string Email = TextBoxEmail.Text.Trim();
        string Password = TextBoxPassword.Text.Trim();


        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\yicha\\Desktop\\new bookstore\\App_Data\\bookstore.mdf;Integrated Security=True");
        string sql = "Select * from customer where email ='" + Email + "' and password ='" + Password + "'";



        if (TextBoxEmail.Text != "" && TextBoxPassword.Text != "")
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Session["username"] = sdr.GetValue(sdr.GetOrdinal("lastname"));
                Session["email"] = sdr.GetValue(sdr.GetOrdinal("email"));
                Response.Write("<script language=javascript>alert('Welcome!');window.location = 'index.aspx';</script>");
                sdr.Close();
                conn.Close();

            }
            else
            {
                Label1.Text = "Wrong Email or password";
            }
        }
    }

    protected void ButtonRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }

    protected void LinkButtonSignout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["ShopCart"] = null;
        Response.Write("<script language=javascript>alert('Sign out');window.location = 'index.aspx';</script>");
    }
}