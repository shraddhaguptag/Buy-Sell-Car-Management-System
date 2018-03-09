using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class BuyCar : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (Session["new"] != null)
        {
            con.Open();
            SqlCommand com3;
            string checkcar = "Select count(*) from Selldata where [Car Registration No.]='" + TBCar_Id.Text + "'";
            SqlCommand com2 = new SqlCommand(checkcar, con);
            int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());
            if (temp2 != 0)
            {
                string checkcar2 = "Select count(*) from Buydata where Car_Id='" + TBCar_Id.Text + "'";
                SqlCommand com4 = new SqlCommand(checkcar2, con);
                int temp3 = Convert.ToInt32(com4.ExecuteScalar().ToString());
                if (temp3 != 0)
                {
                    Response.Write("<script type=\"text/javascript\">alert(' The car is already booked ! ');</script>");
                }
                else
                {
                    try
                    {
                        string insert = "insert into Buydata (Name,[E-mail],Car_Id,Payment_Mode,Bank_Name,Dated) values (@Name,@Email,@Car_Id,@Payment_Mode,@Bank_Name,@Dated)";
                        SqlCommand insertcom = new SqlCommand(insert, con);
                        insertcom.Parameters.AddWithValue("@Name", TBName.Text);
                        insertcom.Parameters.AddWithValue("@Email", TBEmail.Text);
                        insertcom.Parameters.AddWithValue("@Car_Id", TBCar_Id.Text);
                        insertcom.Parameters.AddWithValue("@Payment_Mode", DDPaymentMode.Text);
                        insertcom.Parameters.AddWithValue("@Bank_Name", DDBankName.Text);
                        insertcom.Parameters.AddWithValue("@Dated", TBDated.Text);
                        insertcom.ExecuteNonQuery();
                        com3 = new SqlCommand("UPDATE Selldata SET Booked='" + "Booked" + "' where [Car Registration No.]='" + TBCar_Id.Text + "'", con);
                        com3.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script type=\"text/javascript\">alert(' The car is booked for you ! ');</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Error:" + ex.ToString());
                    }
                }
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert(' The car with the specified registration number does not exist ! ');</script>");
            }
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert(' You need to login first ! ');</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("BuyCar.aspx");
    }
}