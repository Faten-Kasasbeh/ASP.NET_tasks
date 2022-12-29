using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace State_Managment
{
    public partial class cookies_task : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();

            Label1.Style.Add("color", "black");

        }





        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("time");
            cookie.Values["color"] = DropDownList1.SelectedValue.ToString();
            cookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cookie);
            Label1.Style.Add("color", cookie.Value.ToString());

        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {


            if (Request.Cookies["time"] != null)
            {
                HttpCookie time = Request.Cookies["time"];
                Label1.Text = DateTime.Now.ToString();
                string col = time["color"];
                Label1.ForeColor = System.Drawing.Color.FromName(col);

            }
        }
    }
}