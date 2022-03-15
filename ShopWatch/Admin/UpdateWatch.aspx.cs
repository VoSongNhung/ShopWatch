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
    public partial class UpdateWatch : System.Web.UI.Page
    {
        Xuly xuly = new Xuly();
        public int id;
        public string anh;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null || (int)Session["admin"] == 0)
            {
                Response.Redirect("~/Home.aspx");
            }
            id = int.Parse(Request.QueryString[0].ToString());
            if (!Page.IsPostBack)
            {
                listThuongHieu.DataSource = xuly.getListCategory();
                listThuongHieu.DataValueField = "id";
                listThuongHieu.DataTextField = "name";
                listThuongHieu.SelectedIndex = 6;
                listThuongHieu.DataBind();
                Watch w = xuly.detailWatch(id);
                txtName.Text = w.name;
                listThuongHieu.SelectedValue = w.categoryid.ToString();
                txtSoLuong.Text = w.soluong.ToString();
                txtGia.Text = w.gia.ToString();
                txtGiamGia.Text = w.giamgia.ToString();
                txtBaoHanh.Text = w.baohanh;
                txtKieuMay.Text = w.kieumay;
                listGioiTinh.SelectedValue = w.gioitinh;
                txtKichCo.Text = w.kichco;
                txtDoDay.Text = w.doday;
                txtChatLieuVo.Text = w.chatlieuvo;
                txtChatLieuDay.Text = w.chatlieuday;
                txtChatLieuKinh.Text = w.chatlieukinh;
                txtChucNang.Text = w.chucnang;
                txtDoChiuNuoc.Text = w.dochiunuoc;
                txtMoTa.Value = w.mota;
                listType.SelectedValue = w.type.ToString();
                img.Src = "~/Image/Watch/" + id + w.anh;
            }
            anh = xuly.detailWatch(id).anh;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Watch w = new Watch();
            w.id = id;
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
            w.anh = anh;
            if (fileUpload.HasFile) 
            {
                string filePath = Server.MapPath("~/Image/Watch/");
                fileUpload.SaveAs(filePath + id + Path.GetExtension(fileUpload.FileName));
                w.anh = Path.GetExtension(fileUpload.FileName); 
            }
            

            xuly.updateWatch(w);
            Response.Redirect(Request.RawUrl);
        }
    }
}