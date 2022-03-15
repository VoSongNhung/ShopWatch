using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopWatch.Class
{
    public class Watch
    {
        public int id;
        public string name;
        public int categoryid;
        public int soluong;
        public int gia;
        public int giamgia;
        public string anh;
        public bool state;
        public string baohanh;
        public string thuonghieu;
        public string xuatxu;
        public string kieumay;
        public string gioitinh;
        public string kichco;
        public string doday;
        public string chatlieuvo;
        public string chatlieuday;
        public string chatlieukinh;
        public string chucnang;
        public string dochiunuoc;
        public string mota;
        public int type;
        public Watch() { }
        public Watch(int id, string name, int categoryid, int soluong, int gia, int giamgia, string anh, bool state, string baohanh, string thuonghieu, string xuatxu, string kieumay, string gioitinh, string kichco, string doday, string chatlieuvo, string chatlieuday, string chatlieukinh, string chucnang, string dochiunuoc, string mota, int type)
        {
            this.id = id;
            this.name = name;
            this.categoryid = categoryid;
            this.soluong = soluong;
            this.gia = gia;
            this.giamgia = giamgia;
            this.anh = anh;
            this.state = state;
            this.baohanh = baohanh;
            this.thuonghieu = thuonghieu;
            this.xuatxu = xuatxu;
            this.kieumay = kieumay;
            this.gioitinh = gioitinh;
            this.kichco = kichco;
            this.doday = doday;
            this.chatlieuvo = chatlieuvo;
            this.chatlieuday = chatlieuday;
            this.chatlieukinh = chatlieukinh;
            this.chucnang = chucnang;
            this.dochiunuoc = dochiunuoc;
            this.mota = mota;
            this.type = type;
        }
    }
}