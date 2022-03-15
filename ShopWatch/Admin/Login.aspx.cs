using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["admin"] = 0;
            Response.Redirect("Orders.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["admin"] = 1;
            Response.Redirect("Orders.aspx");
        }
    }
}