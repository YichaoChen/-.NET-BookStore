using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registerCompany : System.Web.UI.Page
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

    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        bool readyToGo = true;
        string errorText = "";
        if (TextBoxEmail.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter your email address!";
        }

        if (TextBoxPassword.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter your password!";
        }

        if (TextBoxPhone.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter your phone number!";
        }
        if (TextBoxFirstName.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter your first name!";
        }

        if (TextBoxLastName.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter your last name!";
        }
        if (TextBoxCompanyName.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter your company name!";
        }

        if (TextBoxPhone.Text.Count() != 10)
        {
            readyToGo = false;
            errorText = errorText + " Phone number must be 10 digits!";
        }

        if (TextBoxStreet.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " Must enter your street!";
        }

        if (TextBoxCity.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " Must enter your city!";
        }

        if (TextBoxState.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " Must enter your state!";
        }

        if (TextBoxState.Text != "Texas" && TextBoxState.Text != "Pennsylvania" && TextBoxState.Text != "California" && TextBoxState.Text != "Florida" && TextBoxState.Text != "New York")
        {
            readyToGo = false;
            errorText = errorText + " Your state must be one of Texas, Pennsylvania, California, Florida, New York!";
        }

        if (TextBoxZip.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " Must enter your zip!";
        }

        string emailStr = @"([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,5})+";
        Regex emailReg = new Regex(emailStr);
        if (emailReg.IsMatch(TextBoxEmail.Text.Trim()))
        {
            errorText = errorText + "";
        }
        else
        {
            readyToGo = false;
            errorText = errorText + " Wrong email format!";
        }

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\yicha\\Desktop\\new bookstore\\App_Data\\bookstore.mdf;Integrated Security=True");
        conn.Open();

        string check = "Select * from customer where email ='" + TextBoxEmail.Text + "'";

        SqlCommand cmd3 = new SqlCommand(check, conn);
        SqlDataReader sdr = cmd3.ExecuteReader();

        if (sdr.Read())
        {
            errorText = errorText + " This email address has been registered! ";
            readyToGo = false;
        }

        conn.Close();


        if (readyToGo)
        {
            SqlConnection conn1 = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\yicha\\Desktop\\new bookstore\\App_Data\\bookstore.mdf;Integrated Security=True");
            conn1.Open();
            SqlCommand cmd1 = new SqlCommand("insert into customer ([password],[email],[phone],[firstname],[lastname],[street],[city],[state],[zip]) values(@password,@email,@phone,@firstname,@lastname,@street,@city,@state,@zip)", conn1);
            SqlCommand cmd2 = new SqlCommand("insert into bcustomer ([email],[company_name],[income]) values(@email,@company_name,@income)", conn1);

            cmd1.Parameters.AddWithValue("@password", TextBoxPassword.Text);
            cmd1.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            cmd1.Parameters.AddWithValue("@phone", TextBoxPhone.Text);
            cmd1.Parameters.AddWithValue("@firstname", TextBoxFirstName.Text);
            cmd1.Parameters.AddWithValue("@lastname", TextBoxLastName.Text);
            cmd1.Parameters.AddWithValue("@street", TextBoxStreet.Text);
            cmd1.Parameters.AddWithValue("@city", TextBoxCity.Text);
            cmd1.Parameters.AddWithValue("@state", TextBoxState.Text);
            cmd1.Parameters.AddWithValue("@zip", TextBoxZip.Text);


            cmd2.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            cmd2.Parameters.AddWithValue("@company_name", TextBoxCompanyName.Text);
            cmd2.Parameters.AddWithValue("@income", TextBoxIncome.Text);

            int a = cmd1.ExecuteNonQuery();
            int b = cmd2.ExecuteNonQuery();
            if (a > 0 && b > 0)
            {
                Response.Write("<script language=javascript>alert('Submit done!');window.location = 'signin.aspx';</script>");
                lblError.Text = "";
            }
            else
            {
                lblConfirmSubmit.Text = "Submit Failed";
            }
            conn1.Close();
        }
        else
        {
            //error on screen
            lblError.Text = errorText;
            lblError.Visible = true;
        }

    }

    protected void LinkButtonSignout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["ShopCart"] = null;
        Response.Write("<script language=javascript>alert('Sign out');window.location = 'index.aspx';</script>");
    }


    protected void ButtonBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}