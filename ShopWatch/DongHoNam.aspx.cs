using ShopWatch.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch
{
    public partial class DongHoNam : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            dlNam.DataSource = xuly.showWatch(1, "Nam", Request.QueryString["min"], Request.QueryString["max"]);
            dlNam.DataBind();
        }
    }
}