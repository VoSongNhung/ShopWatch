using ShopWatch.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch
{
    public partial class Home : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            dlHotSale.DataSource = xuly.showHotSale();
            dlHotSale.DataBind();
            dlSEIKO.DataSource = xuly.showWatch(1, 1,true);
            dlSEIKO.DataBind();
            dlCASIO.DataSource = xuly.showWatch(1, 2, true);
            dlCASIO.DataBind();
            dlORIENT.DataSource = xuly.showWatch(1, 3, true);
            dlORIENT.DataBind();
            dlOP.DataSource = xuly.showWatch(1, 5, true);
            dlOP.DataBind();
        }
    }
}