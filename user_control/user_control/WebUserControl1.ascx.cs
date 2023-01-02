using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace user_control
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["name"] != null)
            {
                SqlConnection con = new SqlConnection("data source= DESKTOP-TCARVN7\\SQLEXPRESS; Database=amman; integrated security = true");
                con.Open();
                after.Attributes["style"] = "display: inline";
                RadioButtonList1.Attributes["style"] = "display: none";
                Button1.Attributes["style"] = "display: none";


                SqlCommand cmd1 = new SqlCommand("select SUM([momtaz]) from users", con);
                int momtaz = (int)cmd1.ExecuteScalar();
                SqlCommand cmd2 = new SqlCommand("select SUM([verygood]) from users", con);
                int veryg = (int)cmd2.ExecuteScalar();
                SqlCommand cmd3 = new SqlCommand("select SUM([good]) from users", con);
                int good = (int)cmd3.ExecuteScalar();
                SqlCommand cmd4 = new SqlCommand("select SUM([weak]) from users", con);
                int weak = (int)cmd4.ExecuteScalar();
                SqlCommand cmd5 = new SqlCommand("select SUM([acceptable]) from users", con);
                int acceptable = (int)cmd5.ExecuteScalar();
                int all = momtaz + veryg + good + weak + acceptable;
                Label9.Text = all.ToString();

                double mom = (double)momtaz / (double)all;
                double gg = (double)veryg / (double)all;
                double vv = (double)good / (double)all;
                double ww = (double)weak / (double)all;
                double acc = (double)acceptable / (double)all;

                mom = Math.Round(mom, 2);
                gg = Math.Round(gg, 2);
                vv = Math.Round(vv, 2);
                ww = Math.Round(ww, 2);
                acc = Math.Round(acc, 2);
                Label4.Text = (mom * 100).ToString() + "  %";
                Label5.Text = (gg * 100).ToString() + "  %";
                Label6.Text = (vv * 100).ToString() + "  %";
                Label7.Text = (ww * 100).ToString() + "   %";
                Label8.Text = (acc * 100).ToString() + "   %";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source= DESKTOP-TCARVN7\\SQLEXPRESS; Database=amman; integrated security = true");
            con.Open();

            if (Request.Cookies["name"] == null)
            {
                Response.Cookies["name"].Value = "user";

                try
                {
                    if (RadioButtonList1.SelectedValue == "1")
                    {
                        SqlCommand command = new SqlCommand("INSERT INTO users " + "(momtaz,verygood,good,weak,acceptable) Values('1','0','0','0','0')", con);
                        command.ExecuteNonQuery();

                    }
                    else if (RadioButtonList1.SelectedValue == "2")
                    {
                        SqlCommand command = new SqlCommand("INSERT INTO users " + "(momtaz,verygood,good,weak,acceptable) Values('0','1','0','0','0')", con);
                        command.ExecuteNonQuery();
                    }
                    if (RadioButtonList1.SelectedValue == "3")
                    {
                        SqlCommand command = new SqlCommand("INSERT INTO users " + "(momtaz,verygood,good,weak,acceptable) Values('0','0','1','0','0')", con);
                        command.ExecuteNonQuery();
                    }
                    if (RadioButtonList1.SelectedValue == "4")
                    {
                        SqlCommand command = new SqlCommand("INSERT INTO users " + "(momtaz,verygood,good,weak,acceptable) Values('0','0','0','1','0')", con);
                        command.ExecuteNonQuery();
                    }
                    if (RadioButtonList1.SelectedValue == "5")
                    {
                        SqlCommand command = new SqlCommand("INSERT INTO users " + "(momtaz,verygood,good,weak,acceptable) Values('0','0','0','0','1')", con);
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception a)
                {
                    //Label4.Text = "Some Thing wrong " + a.Message;
                }
               

            }

    
        }

       
    }
}