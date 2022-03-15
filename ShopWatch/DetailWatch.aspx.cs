using ShopWatch.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch
{
    public partial class DetailWatch : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        public int id;
        public string anh;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString[0].ToString());
            Watch w = xuly.detailWatch(id);
            anh = w.anh;
            lbName.Text = w.name;
            lbGia.Text = w.gia.ToString("N0");
            lbGia2.Text = (Math.Round((w.gia - w.gia * w.giamgia / 100.0) / 100000, 0) * 100000).ToString("N0");
            lbBaoHanh.Text = w.name;
            lbBaoHanh.Text = w.baohanh;
            lbThuongHieu.Text = w.thuonghieu;
            lbXuatXu.Text = w.xuatxu;
            lbKieuMay.Text = w.kieumay;
            lbGioiTinh.Text = w.gioitinh;
            lbKichCo.Text = w.kichco;
            lbDoDay.Text = w.doday;
            lbChatLieuVo.Text = w.chatlieuvo;
            lbChatLieuDay.Text = w.chatlieuday;
            lbChatLieuKinh.Text = w.chatlieukinh;
            lbChucNang.Text = w.chucnang;
            lbDoChiuNuoc.Text = w.dochiunuoc;
            lbGiamGia.Text = "-" + w.giamgia + "%";
            if (Session["admin"] != null && (int)Session["admin"] == 1)
            {
                btSua.Visible = true;
                btXoa.Visible = true;
            }
            else
            {
                btSua.Visible = false;
                btXoa.Visible = false;
            }
        }

        protected void btSua_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin/UpdateWatch.aspx?id="+id);
        }

        protected void btXoa_Click(object sender, EventArgs e)
        {
            xuly.deleteWatch(id);
            Response.Redirect("Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            List<Watch> list;
            if (Session["Cart"]==null)
                list = new List<Watch>();
            else
            {
                list = (List<Watch>)Session["Cart"];
            }


            bool trung = false;
            Watch w = xuly.detailWatch(id);
            w.soluong = 1;
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].id == w.id)
                    trung = true;
            }
            if (trung)
            {
                Response.Write("<script>alert('Sản phẩm đã có trong giỏ');</script>");
                //Response.Redirect("Cart.aspx");
            }
            else
            {
                list.Add(w);
                Session["Cart"] = list;
                Response.Redirect("Cart.aspx");
            }
        }
    }
}