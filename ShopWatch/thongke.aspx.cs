using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch
{
    public partial class thongke : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCount.Text = "ShopWatch đã có " + Application["counter"].ToString() + " lượt truy cập ";
            lblCur.Text = "ShopWatch đang có " + Application["cur"].ToString() + " người truy cập";
        }
    }
}