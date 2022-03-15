using ShopWatch.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch
{
    public partial class Cart : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Watch> list = (List<Watch>)Session["Cart"];
            DataTable dt = new DataTable();
            dt.Columns.Add("id");
            dt.Columns.Add("name");
            dt.Columns.Add("anh");
            dt.Columns.Add("gia");
            dt.Columns.Add("soluong");
            if (list != null)
            {
                double s=0;
                for (int i = 0; i < list.Count; i++)
                {
                    DataRow workRow = dt.NewRow();
                    workRow[0] = list[i].id;
                    workRow[1] = list[i].name;
                    workRow[2] = list[i].anh;
                    workRow[3] = Math.Round((list[i].gia - list[i].gia * list[i].giamgia / 100.0) / 100000, 0) * 100000;
                    workRow[4] = list[i].soluong;
                    dt.Rows.Add(workRow);
                    s = s + (Math.Round((list[i].gia - list[i].gia * list[i].giamgia / 100.0) / 100000, 0) * 100000) * list[i].soluong;
                }
                lbTamTinh.Text = s.ToString("N0");
            }
            if (!Page.IsPostBack)
            {
                dlCart.DataSource = dt;
                dlCart.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<Watch> list = (List<Watch>)Session["Cart"];
            if (list != null)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    TextBox tb = (TextBox)dlCart.Items[i].FindControl("txtSoLuong");
                    list[i].soluong = int.Parse(tb.Text);
                }
            }
            Response.Redirect(Request.RawUrl);
        }

        protected void btRemove_Click1(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            DataListItem item = (DataListItem)btn.NamingContainer;
            int index = item.ItemIndex;
            List<Watch> list = (List<Watch>)Session["Cart"];
            if (list != null)
            {
                list.RemoveAt(index);
            }
            Response.Redirect(Request.RawUrl);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtHoTen.Text == "" || txtSDT.Text == "" || txtDiaChi.Text == "")
            {
                Response.Write("<script>alert('phải điền đầy đủ thông tin khách hàng');</script>");
                return;
            }

            Orders o = new Orders();
            o.receive = DateTime.Now;
            o.confirm = DateTime.Now;
            o.state = false;
            o.tenkh = txtHoTen.Text;
            o.sdtkh = txtSDT.Text;
            o.diachikh = txtDiaChi.Text;
            xuly.insertOrder(o);
            List<Watch> list = (List<Watch>)Session["Cart"];
            if (list != null)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    OrderDetail od = new OrderDetail();
                    od.orderid = (xuly.getIdAfter("orders") - 1);
                    od.productid = list[i].id;
                    od.gia = (int)Math.Round((list[i].gia - list[i].gia * list[i].giamgia / 100.0) / 100000, 0) * 100000;
                    od.soluong = list[i].soluong;
                    xuly.insertOrderDetail(od);
                }
                Session["Cart"] = null;
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void txtHoTen_TextChanged(object sender, EventArgs e)
        {
            if (txtHoTen.Text == "")
            {
                Response.Write("<script>alert('họ và tên không được để trống');</script>");
                return;
            }
        }

        protected void txtSDT_TextChanged(object sender, EventArgs e)
        {
            if (txtSDT.Text == "")
            {
                Response.Write("<script>alert('số điện thoại không được để trống');</script>");
                return;
            }
        }

        protected void txtDiaChi_TextChanged(object sender, EventArgs e)
        {
            if (txtDiaChi.Text == "")
            {
                Response.Write("<script>alert('địa chỉ không được để trống');</script>");
                return;
            }
        }
    }
}