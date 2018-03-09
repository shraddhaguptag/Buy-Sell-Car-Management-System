using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Registration1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

        if (Session["new"] != null)
        {
            con.Open();
            string ckeckuser = "Select count(*) from UserData where [User Name]='" + TBUserName.Text + "'";
            SqlCommand com = new SqlCommand(ckeckuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp != 0)
            {
                Response.Write("<script type=\"text/javascript\">alert(' User already exists ! ');</script>");
            }
            else
            {
                try
                {

                    string insert = "insert into Userdata (Name,Gender,[Date Of Birth],City,State,[PIN Code],[ID Proof],[Contact Number],[E-mail],[User Name],Password) values (@Name,@Gender,@DOB,@City,@State,@Pin,@Id,@Contact,@Email,@UN,@Pass)";
                    SqlCommand insertcom = new SqlCommand(insert, con);
                    insertcom.Parameters.AddWithValue("@Name", TBName.Text);
                    insertcom.Parameters.AddWithValue("@Gender", RBGender.Text);
                    insertcom.Parameters.AddWithValue("@DOB", TBDoB.Text);
                    insertcom.Parameters.AddWithValue("@City", TBCity.Text);
                    insertcom.Parameters.AddWithValue("@State", TBState.Text);
                    insertcom.Parameters.AddWithValue("@Pin", TBPIN.Text);
                    insertcom.Parameters.AddWithValue("@Id", DDId.Text);
                    insertcom.Parameters.AddWithValue("@Contact", TBContactNo.Text);
                    insertcom.Parameters.AddWithValue("@Email", TBEmail.Text);
                    insertcom.Parameters.AddWithValue("@UN", TBUserName.Text);
                    insertcom.Parameters.AddWithValue("@Pass", TextBoxP.Text);
                    insertcom.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script type=\"text/javascript\">alert(' You are now Registered ! ');</script>");
                    Response.Redirect("Login.aspx");

                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }

            }
   
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid=CheckBox1.Checked;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}