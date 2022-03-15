using ShopWatch.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch
{
    public partial class login : System.Web.UI.Page
    {
        Xuly xl = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (xl.dangnhap(txtUser.Text.Trim(), pass.Value.ToString()))
            {
                Session["admin"] = 1;
                Response.Redirect("Admin/Orders.aspx");
            }
            else
            {
                Session["admin"] = 0;
                lblReport.Text = "Tên đăng nhập hoặc mật khẩu không đúng!!!";
            }
        }
    }
}