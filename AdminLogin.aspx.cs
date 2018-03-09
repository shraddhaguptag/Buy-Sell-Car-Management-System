using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "admin" && TextBox2.Text == "12345")
        {
            Session["admin"] = TextBox1.Text;
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            Response.Write("Password is not correct");
        }
    }
}