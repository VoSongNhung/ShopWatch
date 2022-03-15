using ShopWatch.Class;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopWatch.Admin
{
    public partial class InsertWatch : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null || (int)Session["admin"] == 0)
            {
                Response.Redirect("~/Home.aspx");
            }
            if (!Page.IsPostBack)
            {
                listThuongHieu.DataSource = xuly.getListCategory();
                listThuongHieu.DataValueField = "id";
                listThuongHieu.DataTextField = "name";
                listThuongHieu.SelectedIndex = 6;
                listThuongHieu.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Watch w = new Watch();
            w.name = txtName.Text;
            w.categoryid = int.Parse(listThuongHieu.SelectedValue);
            w.soluong = int.Parse(txtSoLuong.Text);
            w.gia = int.Parse(txtGia.Text);
            w.giamgia = int.Parse(txtGiamGia.Text);
            w.baohanh = txtBaoHanh.Text;
            w.kieumay = txtKieuMay.Text;
            w.gioitinh = listGioiTinh.SelectedValue;
            w.kichco = txtKichCo.Text;
            w.doday = txtDoDay.Text;
            w.chatlieuvo = txtChatLieuVo.Text;
            w.chatlieuday = txtChatLieuDay.Text;
            w.chatlieukinh = txtChatLieuKinh.Text;
            w.chucnang = txtChucNang.Text;
            w.dochiunuoc = txtDoChiuNuoc.Text;
            w.mota = txtMoTa.Value;
            w.type = int.Parse(listType.SelectedValue);

            string filePath = Server.MapPath("~/Image/Watch/");
            fileUpload.SaveAs(filePath + xuly.getIdAfter("watch")+Path.GetExtension(fileUpload.FileName));
            w.anh = Path.GetExtension(fileUpload.FileName);
            xuly.insertWatch(w);
            Response.Redirect(Request.RawUrl);
        }
    }
}