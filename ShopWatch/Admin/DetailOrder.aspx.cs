using ShopWatch.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch.Admin
{
    public partial class DetailOrder : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null || (int)Session["admin"] == 0)
            {
                Response.Redirect("~/Home.aspx");
            }
            dlDetailOrder.DataSource = xuly.showDetailOrder(int.Parse(Request.QueryString[0]));
            dlDetailOrder.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            xuly.duyetOrder(int.Parse(Request.QueryString[0]));
            Response.Redirect("Orders.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            xuly.huyDuyetOrder(int.Parse(Request.QueryString[0]));
            Response.Redirect("Orders.aspx");
        }
    }
}