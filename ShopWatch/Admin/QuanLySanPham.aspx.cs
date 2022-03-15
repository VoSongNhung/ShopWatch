using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopWatch.Class;
namespace ShopWatch.Admin
{
    public partial class QuanLySanPham : System.Web.UI.Page
    {
        Xuly data = new Xuly();
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        GridView1.DataSource = data.dssp();
        //        DataBind();
        //    }
        //}
        //public void hienthi()
        //{
        //    GridView1.DataSource = data.dssp();
        //   DataBind();
        //}
        //protected void lbDelete_Click(object sender, CommandEventArgs e)
        //{
        //    if (e.CommandName == "delete")
        //    {
        //        int b = Convert.ToInt16(e.CommandArgument);
        //        data.XoaSP(b);
        //    }
        //}
    }
}