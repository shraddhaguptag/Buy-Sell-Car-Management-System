using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class SearchCar : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        Button2.Visible = false;
        Button1.Visible = false;
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
    protected void Submit_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["new"] != null)
        {
            con.Open();
            GridView2.Visible = true;
            Button2.Visible = true;
            con.Close();
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert(' You need to login first ! ');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("BuyCar.aspx");
    }
}