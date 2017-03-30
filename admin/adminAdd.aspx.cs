using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminAdd : System.Web.UI.Page
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

    protected void bAdd_Click(object sender, EventArgs e)
    {
        string filename=null;
        string filetype = null;
        bool readyToGo = true;
        string errorText = "";

        if (TextBox1.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter ISBN!";
        }

        if (TextBox2.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter Title!";
        }

        if (TextBox3.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter Publisher!";
        }
        if (TextBox4.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter Author!";
        }

        if (TextBox5.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter Price!";
        }

        if (TextBox6.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter Cost!";
        }
        if (TextBox7.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter Catagory!";
        }
        if (TextBox8.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter Stock!";
        }
        if (TextBox9.Text == "")
        {
            readyToGo = false;
            errorText = errorText + " You didn't enter Description!";
        }

        if (pic_upload.HasFile)//判断控件是否有文件路径
        {
            filename = pic_upload.FileName;//取得文件名
            filetype = filename.Substring(filename.LastIndexOf(".") + 1);//取得后缀
            if (filetype.ToLower() == "jpg" || filetype.ToLower() == "gif")//判断类型
            {
                pic_upload.SaveAs(Server.MapPath("/images/Covers/") + filename);
                string virpath = "/images/Covers/" +filename;
                string mappath = Server.MapPath(virpath);
                pic_upload.PostedFile.SaveAs(mappath);
                //传到根目录的images文件夹+重命名的文件名，也可以用原来的图片的名称，自己定。上传成功；
            }
            else
            {
                readyToGo = false;
                lbl_pic.Text = "Must be .jpg or .gif format";//提示错误
            }
        }
        else
        {
            readyToGo = false;
            lbl_pic.Text = "Please select a picture!"; //提示错误
        }

        if (readyToGo)
        {

            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\yicha\\Desktop\\new bookstore\\App_Data\\bookstore.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("insert into books ([isbn],[title],[publisher],[author],[price],[cost],[category],[stock],[description],[image]) values(@isbn,@title,@publisher,@author,@price,@cost,'"+TextBox7.Text+"',"+ TextBox8.Text+",@description,@image)", conn);

            cmd1.Parameters.AddWithValue("@isbn", TextBox1.Text);
            cmd1.Parameters.AddWithValue("@title", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@publisher", TextBox3.Text);
            cmd1.Parameters.AddWithValue("@author", TextBox4.Text);
            cmd1.Parameters.AddWithValue("@price", TextBox5.Text);
            cmd1.Parameters.AddWithValue("@cost", TextBox6.Text);
            //cmd1.Parameters.AddWithValue("@category", TextBox7.Text);
            //cmd1.Parameters.AddWithValue("@stock", Convert.ToInt32(TextBox8.Text));
            cmd1.Parameters.AddWithValue("@description", TextBox9.Text);
            cmd1.Parameters.AddWithValue("@image", "/images/Covers/" + filename);

            int a = cmd1.ExecuteNonQuery();

            if (a > 0)
            {
                Response.Write("<script language=javascript>alert('Submit done!');window.location = 'adminAdd.aspx';</script>");
                lblError.Text = "";
            }
            else
            {
                Response.Write("<script language=javascript>alert('Submit failed!');window.location = 'adminAdd.aspx';</script>");
            }
            conn.Close();

        }
        else
        {
            //error on screen
            lblError.Text = errorText;
            lblError.Visible = true;
        }

    }



    protected void ButtonSignOut_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("adminSignin.aspx");
    }
}
