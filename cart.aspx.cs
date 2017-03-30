using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    Hashtable Cart;
    double totalPrice;


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == null)
        {
            
            Response.Write("<script language=javascript>alert('Please sign in!');window.location = 'signin.aspx';</script>");
        }
        else {
            if (Session["ShopCart"] == null)
            {
                Response.Write("<script language=javascript>alert('Please do some purchase!');window.location = 'index.aspx';</script>");
            }
            else
            {

                Cart = (Hashtable)Session["ShopCart"];

                LinkButtonSignout.Text = "";


                if (Session["username"] != null)
                {
                    LabelLastname.Text = (String)Session["username"];
                    LinkButtonSignout.Text = "Sign out";

                }

                Label c;
                HtmlTableRow row;
                int k = 0;
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\yicha\\Desktop\\new bookstore\\App_Data\\bookstore.mdf;Integrated Security=True");
                conn.Open();
                foreach (string skey in Cart.Keys)
                {
                    String item = skey;
                    
                    String find = "SELECT isbn, title, price FROM [books] where isbn = '" + item + "'";
                    SqlDataAdapter da = new SqlDataAdapter(find, conn);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    row = new HtmlTableRow();
                    

                    for (int j = 0; j < 3; j++) {
                        HtmlTableCell cell = new HtmlTableCell();
                        c = new Label();
                        c.Text = ds.Tables[0].Rows[0][j].ToString();
                        c.ID = (k * 10 + j).ToString();
                        cell.Controls.Add(c);
                        row.Cells.Add(cell);
                    }
                    HtmlTableCell cell2 = new HtmlTableCell();
                    Label d = new Label();
                    d.Text = Cart[skey].ToString();
                    cell2.Controls.Add(d);
                    d.ID = (k * 10 + 3).ToString();
                    row.Cells.Add(cell2);

                    table1.Rows.Add(row);
                    k = k + 1;
                }
                conn.Close();
                
                

                for (int i = 0; i < Cart.Count; i++)
                {

                    Label la = (Label)table1.Rows[i].Cells[2].FindControl((i * 10 + 2).ToString());
                    Label la2 = (Label)table1.Rows[i].Cells[3].FindControl((i * 10 + 3).ToString());
                    double A = Convert.ToDouble(la.Text);
                    int B = Convert.ToInt32(la2.Text);
                    totalPrice += A * B;
                }

                Label5.Text = totalPrice.ToString();
               
            }

        }

    }

    protected void LinkButtonSignout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["ShopCart"] = null;
        Response.Write("<script language=javascript>alert('Sign out!');window.location = 'index.aspx';</script>");

    }





    protected void ButtonCheckout_Click(object sender, EventArgs e)
    {
        foreach (string skey in Cart.Keys)
        {
            String item = skey;
            String quantity = Cart[skey].ToString();
            Random random = new Random();
            int n = random.Next(1,999999999);
            


            String email = Session["email"].ToString();

            SqlConnection conn1 = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\yicha\\Desktop\\new bookstore\\App_Data\\bookstore.mdf;Integrated Security=True");
            conn1.Open();

            //string check = "Select * from orderitem where oid = n ";
            //SqlCommand cmd3 = new SqlCommand(check, conn);
            //SqlDataReader sdr = cmd3.ExecuteReader();

            //if (sdr.Read())
            //{
            //n = n + 1;
            //}
            //else
            //{

            SqlCommand cmd2 = new SqlCommand("insert into orders ([oid],[email]) values(@oid,@email)", conn1);
            SqlCommand cmd1 = new SqlCommand("insert into orderitem ([oid],[isbn],[quantity]) values(@oid,@isbn,@quantity)", conn1);


            cmd2.Parameters.AddWithValue("@oid", n);
            cmd2.Parameters.AddWithValue("@email", email);

            cmd1.Parameters.AddWithValue("@oid", n);
            cmd1.Parameters.AddWithValue("@isbn", item);
            cmd1.Parameters.AddWithValue("@quantity", Convert.ToInt32(quantity));

            cmd2.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            
            conn1.Close();

            Response.Write("<script language=javascript>alert('Your order has been placed!');window.location = 'index.aspx';</script>");
            Session["ShopCart"] = null;
            //}
        }
    }


    protected void ButtonContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("goodlist.aspx");
    }
}