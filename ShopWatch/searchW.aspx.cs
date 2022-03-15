using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopWatch.Class;

namespace ShopWatch
{
    public partial class searchW : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            dltim.DataSource = xuly.showWatch(1, "Nam", Request.QueryString["min"], Request.QueryString["max"]);
            dltim.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dltim.DataSource = xuly.showWatch1(TextBox1.Text, "Nam", Request.QueryString["min"], Request.QueryString["max"]);
            dltim.DataBind();
        }
    }
}