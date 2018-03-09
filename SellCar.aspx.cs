using System;
using System.Collections;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Configuration;
using System.IO;

public partial class SellCar : System.Web.UI.Page
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
                    string checkcar = "Select count(*) from Selldata where [Car Registration No.]='" + TCarRegis.Text + "'";
                    SqlCommand com2 = new SqlCommand(checkcar,con);
                    int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());
                    if (temp2 != 0)
                    {
                        Response.Write("<script type=\"text/javascript\">alert(' Car is already registered ! ');</script>");
                    }
                    else
                    {
                        try
                        {
                            string str = FileUpload1.FileName;
                            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//Uploads//" + str);
                            string path = "~//Uploads//" + str.ToString();
                            string insert = "insert into Selldata(Name,[Car Registration No.],Make,Model,[Fuel Type],Transmission,Year,[Kilometres Used],Condition,[No. of Owner(s)],[Selling Price],Dated,[Upload an Image])values(@Name,@CRN,@Make,@Model,@Fuel,@Transmission,@Year,@KmUsed,@Condition,@NoOfOwner,@Sell,@Date,@Upload)";
                            SqlCommand insertcom = new SqlCommand(insert, con);
                            insertcom.Parameters.AddWithValue("@Upload", path);
                            insertcom.Parameters.AddWithValue("@Name", TName.Text);
                            insertcom.Parameters.AddWithValue("@CRN", TCarRegis.Text);
                            insertcom.Parameters.AddWithValue("@Make", DMake.Text);
                            insertcom.Parameters.AddWithValue("@Model", DModel.Text);
                            insertcom.Parameters.AddWithValue("@Fuel", DFuel.Text);
                            insertcom.Parameters.AddWithValue("@Transmission", DTransission.Text);
                            insertcom.Parameters.AddWithValue("@Year", TYear.Text);
                            insertcom.Parameters.AddWithValue("@KmUsed", TKm.Text);
                            insertcom.Parameters.AddWithValue("@Condition", DCondition.Text);
                            insertcom.Parameters.AddWithValue("@NoOfOwner", TNoofOwner.Text);
                            insertcom.Parameters.AddWithValue("@Sell", TSelling.Text);
                            insertcom.Parameters.AddWithValue("@Date", TDated.Text);
                            insertcom.Parameters.AddWithValue("Booked", "Not Booked");
                            insertcom.ExecuteNonQuery();
                            con.Close();
                            Response.Write("<script type=\"text/javascript\">alert(' Your Car has been Registered ! ');</script>");
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Error:" + ex.ToString());
                        }
                    }
                }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert(' You need to login first ! ');</script>");
            }       
    }
    protected void DMake_SelectedIndexChanged(object sender, EventArgs e)
    {
        DModel.Items.Clear();
        int index=DMake.SelectedIndex;

        if (DMake.SelectedIndex == 0)
            DModel.Enabled=false;
        else
        {
            DModel.Enabled=true;
            switch(index)
            {
                case 1:

                    {
                        DModel.Items.Add("----");
            DModel.Items.Add("Omni");
            DModel.Items.Add("Alto 800");
            DModel.Items.Add("WagonR");
            DModel.Items.Add("Ritz");
            DModel.Items.Add("");
                        break;
        }
            case 2:

        {
            DModel.Items.Add("----");
            DModel.Items.Add("i10");
            DModel.Items.Add("120");
            DModel.Items.Add("Verna");
            DModel.Items.Add("Accent");
            break;
        }
                case 3:
                
        {
            DModel.Items.Add("----");
            DModel.Items.Add("Volkswagon Polo");
            DModel.Items.Add("Amaze");
            DModel.Items.Add("Jazz");
            DModel.Items.Add("Mobilo");
            break;
        }
                case 4:

        {
            DModel.Items.Add("----");
            DModel.Items.Add("Tavera");
            DModel.Items.Add("Optra");
            DModel.Items.Add("Cruze");
            DModel.Items.Add("Beat");
            break;

        }
                case 5:

        {
            DModel.Items.Add("----");

            DModel.Items.Add("Bolero");
            DModel.Items.Add("Xylo");
            DModel.Items.Add("Scorpio");
            DModel.Items.Add("XUV500");
            break;
        }

                case 6:
        {

            DModel.Items.Add("----");
            DModel.Items.Add("Indica");
            DModel.Items.Add("Indigo");
            DModel.Items.Add("Nano");
            DModel.Items.Add("Sumo");
            break;
        }
      } 

    }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SellCar.aspx");
    }
}