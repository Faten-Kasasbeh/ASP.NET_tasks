using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace State_Managment
{
    public partial class task29_12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["email"]!= null && Request.Cookies["password"] != null)
            {
                email.Value = Request.Cookies["email"].Value;
                password.Value = Request.Cookies["password"].Value;

            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {
                Response.Cookies["email"].Value = email.Value;
                Response.Cookies["password"].Value = password.Value;
                Response.Cookies["email"].Expires = DateTime.Now.AddMinutes(2);
                Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(2);

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            email.Value = "";
            password.Value = "";
            Label1.Text = Request.Cookies["email"].Value + Request.Cookies["password"].Value;
        }
    }
}