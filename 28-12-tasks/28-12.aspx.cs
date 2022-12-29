using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpageValidation
{
    public partial class _28_12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String cmnt = txt.Text;
            SqlConnection con = new SqlConnection("data source=DESKTOP-TCARVN7\\SQLEXPRESS; database=task28; integrated security=SSPI");
            con.Open();
            SqlCommand cmd = new SqlCommand($"insert into comments( comment )values('{txt.Text}')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            txt.Text = "";

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);

                   }


    }
}