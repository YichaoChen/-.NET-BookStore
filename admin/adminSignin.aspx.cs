using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminSignin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonSignIn_Click(object sender, EventArgs e)
    {
        string Account = TextBoxA.Text.Trim();
        string Password = TextBoxPassword.Text.Trim();


        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\yicha\\Desktop\\new bookstore\\App_Data\\bookstore.mdf;Integrated Security=True");
        string sql = "Select * from admins where aid ='" + Account + "' and password ='" + Password + "'";



        if (TextBoxA.Text != "" && TextBoxPassword.Text != "")
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                Session["admin"] = sdr.GetValue(sdr.GetOrdinal("aid"));
                Response.Redirect("adminIndex.aspx");
                sdr.Close();
                conn.Close();

            }
            else
            {
                Label1.Text = "Wrong id or password";
            }
        }
    }
}