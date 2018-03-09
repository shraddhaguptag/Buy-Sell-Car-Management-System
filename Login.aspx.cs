using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection c1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        c1.Open();
        String checkuser = "Select count(*) from Userdata where [User Name]='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, c1);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        c1.Close();
        if (temp == 1)
        {
            c1.Open();
            String checkPasswordQuery = "Select password from Userdata where [User Name]='" + TextBox1.Text + "'";
            SqlCommand passcom = new SqlCommand(checkPasswordQuery, c1);
            String password = passcom.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBox2.Text)
            {
                Session["New"] = TextBox1.Text;
                Response.Write("<script type=\"text/javascript\">alert(' Password is correct ! ');</script>");
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert(' Password is incorrect ! ');</script>");
            }
            c1.Close();
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert(' User Name is incorrect ! ');</script>");
        }
    }
}