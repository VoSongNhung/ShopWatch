using ShopWatch.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch.Admin
{
    public partial class Orders : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null|| (int)Session["admin"] == 0)
            {
                Response.Redirect("~/Home.aspx");
            }
            gvOrders.DataSource = xuly.showOrder();
            gvOrders.DataBind();
            for (int i = 0; i < gvOrders.Rows.Count; i++)
            {
                if (gvOrders.Rows[i].Cells[3].Text == "False")
                {
                    gvOrders.Rows[i].Cells[2].Text = "";
                    gvOrders.Rows[i].Cells[3].Text = "Chưa duyệt";
                    gvOrders.Rows[i].Cells[3].ForeColor = Color.Red;
                }
                else
                {
                    gvOrders.Rows[i].Cells[3].Text = "Đã duyệt";
                    gvOrders.Rows[i].Cells[3].ForeColor = Color.Blue;
                }
            }
        }

        protected void gvOrders_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("DetailOrder.aspx?id=" + gvOrders.Rows[e.NewEditIndex].Cells[0].Text);
        }

        protected void gvOrders_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            xuly.deleteOrder(int.Parse(gvOrders.Rows[e.RowIndex].Cells[0].Text));
            xuly.deleteOrderDetail(int.Parse(gvOrders.Rows[e.RowIndex].Cells[0].Text));
            Response.Redirect(Request.RawUrl);
        }
    }
}