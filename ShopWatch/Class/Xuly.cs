using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ShopWatch.Class
{
    public class Xuly
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-1G3UVUT\SQLSERVER;Initial Catalog=ShopWatch;Integrated Security=True");
        public DataTable showHotSale()
        {
            conn.Open();
            string sql = "select top 4 watch.id, watch.name,watch.gia,giamgia,(watch.gia-watch.gia*watch.giamgia/100) as 'gia2',anh,sum(orderdetail.soluong)"
                        + " from watch inner join orderdetail on watch.id = orderdetail.productid"
                        +" group by watch.id, watch.name,watch.gia,giamgia,anh"
                        +" order by sum(orderdetail.soluong) desc";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;
        }
        public DataTable showWatch(int type, int categoryid)
        {
            conn.Open();
            string sql = "select watch.id, watch.name,gia,giamgia,(gia-gia*giamgia/100) as 'gia2',anh " +
                         "from watch inner join category on watch.categoryid=category.id " +
                         "where categoryid=" + categoryid + " and type=" + type;
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;
        }
        public DataTable showWatch(int type, int categoryid, bool isTop4)
        {
            conn.Open();
            string sql = "select top 4 watch.id, watch.name,gia,giamgia,(gia-gia*giamgia/100) as 'gia2',anh " +
                         "from watch inner join category on watch.categoryid=category.id " +
                         "where categoryid=" + categoryid + " and type=" + type;
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;
        }
        public DataTable showWatch(int type, int categoryid, string min, string max)
        {
            conn.Open();
            string sql = "select watch.id, watch.name,gia,giamgia,(gia-gia*giamgia/100) as 'gia2',anh " +
                         "from watch inner join category on watch.categoryid=category.id " +
                         "where categoryid=" + categoryid + " and type=" + type
                         + (min != null ? (" and round(gia-gia*giamgia/100,-5)>=" + min) : "")
                         + (max != null ? (" and round(gia-gia*giamgia/100,-5)<=" + max) : "");
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;
        }
        public DataTable showWatch(int type, string gioitinh, string min, string max)
        {
            conn.Open();
            string sql = "select watch.id, watch.name,gia,giamgia,(gia-gia*giamgia/100) as 'gia2',anh " +
                         "from watch inner join category on watch.categoryid=category.id " +
                         "where type=" + type
                         + (gioitinh == "Nam" ? " and gioitinh=N'Nam'" : " and gioitinh=N'Nữ'")
                         + (min != null ? (" and round(gia-gia*giamgia/100,-5)>=" + min) : "")
                         + (max != null ? (" and round(gia-gia*giamgia/100,-5)<=" + max) : "");
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;
        }
        public Watch detailWatch(int id)
        {
            conn.Open();
            string sql = "select * " +
                         "from watch inner join category on watch.categoryid=category.id " +
                         "where watch.id=" + id;
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Watch w = new Watch();
            w.id = id;
            w.name = dr.GetString(1);
            w.categoryid = dr.GetInt32(2);
            w.soluong = dr.GetInt32(3);
            w.gia = dr.GetInt32(4);
            w.giamgia = dr.GetInt32(5);
            w.anh = dr.GetString(6);
            w.state = (bool)dr[7];
            w.baohanh = dr["baohanh"].ToString();
            w.thuonghieu = dr.GetString(21);
            w.xuatxu = dr.GetString(22);
            w.kieumay = dr["kieumay"].ToString();
            w.gioitinh = dr["gioitinh"].ToString();
            w.kichco = dr["kichco"].ToString();
            w.doday = dr["doday"].ToString();
            w.chatlieuvo = dr["chatlieuvo"].ToString();
            w.chatlieuday = dr["chatlieuday"].ToString();
            w.chatlieukinh = dr["chatlieukinh"].ToString();
            w.chucnang = dr["chucnang"].ToString();
            w.dochiunuoc = dr["dochiunuoc"].ToString();
            w.mota = dr["mota"].ToString();
            w.type = Convert.ToInt32(dr["type"]);
            conn.Close();
            return w;
        }
        public DataTable getListCategory()
        {
            conn.Open();
            string sql = "select * from category ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;
        }
        public bool insertWatch(Watch w)
        {
            conn.Open();
            string sql = "insert into watch values("
                            + "@name,"
                            + "@categoryid,"
                            + "@soluong,"
                            + "@gia,"
                            + "@giamgia,"
                            + "@anh,"
                            + "@state,"
                            + "@baohanh,"
                            + "@kieumay,"
                            + "@gioitinh,"
                            + "@kichco,"
                            + "@doday,"
                            + "@chatlieuvo,"
                            + "@chatlieuday,"
                            + "@chatlieukinh,"
                            + "@chucnang,"
                            + "@dochiunuoc,"
                            + "@mota,"
                            + "@type"
                        + ")";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("name", w.name);
            cmd.Parameters.AddWithValue("categoryid", w.categoryid);
            cmd.Parameters.AddWithValue("soluong", w.soluong);
            cmd.Parameters.AddWithValue("gia", w.gia);
            cmd.Parameters.AddWithValue("giamgia", w.giamgia);
            cmd.Parameters.AddWithValue("anh", w.anh);
            cmd.Parameters.AddWithValue("state", 1);
            cmd.Parameters.AddWithValue("baohanh", w.baohanh);
            cmd.Parameters.AddWithValue("kieumay", w.kieumay);
            cmd.Parameters.AddWithValue("gioitinh", w.gioitinh);
            cmd.Parameters.AddWithValue("kichco", w.kichco);
            cmd.Parameters.AddWithValue("doday", w.doday);
            cmd.Parameters.AddWithValue("chatlieuvo", w.chatlieuvo);
            cmd.Parameters.AddWithValue("chatlieuday", w.chatlieuday);
            cmd.Parameters.AddWithValue("chatlieukinh", w.chatlieukinh);
            cmd.Parameters.AddWithValue("chucnang", w.chucnang);
            cmd.Parameters.AddWithValue("dochiunuoc", w.dochiunuoc);
            cmd.Parameters.AddWithValue("mota", w.mota);
            cmd.Parameters.AddWithValue("type", w.type);
            int d = cmd.ExecuteNonQuery();
            conn.Close();
            return (d == 0 ? false : true);
        }
        public bool updateWatch(Watch w)
        {
            conn.Open();
            string sql = "update watch set "
                            + "name=@name,"
                            + "categoryid=@categoryid,"
                            + "soluong=@soluong,"
                            + "gia=@gia,"
                            + "giamgia=@giamgia,"
                            + "anh=@anh,"
                            + "state=@state,"
                            + "baohanh=@baohanh,"
                            + "kieumay=@kieumay,"
                            + "gioitinh=@gioitinh,"
                            + "kichco=@kichco,"
                            + "doday=@doday,"
                            + "chatlieuvo=@chatlieuvo,"
                            + "chatlieuday=@chatlieuday,"
                            + "chatlieukinh=@chatlieukinh,"
                            + "chucnang=@chucnang,"
                            + "dochiunuoc=@dochiunuoc,"
                            + "mota=@mota,"
                            + "type=@type"
                        + " where id=@id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("id", w.id);
            cmd.Parameters.AddWithValue("name", w.name);
            cmd.Parameters.AddWithValue("categoryid", w.categoryid);
            cmd.Parameters.AddWithValue("soluong", w.soluong);
            cmd.Parameters.AddWithValue("gia", w.gia);
            cmd.Parameters.AddWithValue("giamgia", w.giamgia);
            cmd.Parameters.AddWithValue("anh", w.anh);
            cmd.Parameters.AddWithValue("state", 1);
            cmd.Parameters.AddWithValue("baohanh", w.baohanh);
            cmd.Parameters.AddWithValue("kieumay", w.kieumay);
            cmd.Parameters.AddWithValue("gioitinh", w.gioitinh);
            cmd.Parameters.AddWithValue("kichco", w.kichco);
            cmd.Parameters.AddWithValue("doday", w.doday);
            cmd.Parameters.AddWithValue("chatlieuvo", w.chatlieuvo);
            cmd.Parameters.AddWithValue("chatlieuday", w.chatlieuday);
            cmd.Parameters.AddWithValue("chatlieukinh", w.chatlieukinh);
            cmd.Parameters.AddWithValue("chucnang", w.chucnang);
            cmd.Parameters.AddWithValue("dochiunuoc", w.dochiunuoc);
            cmd.Parameters.AddWithValue("mota", w.mota);
            cmd.Parameters.AddWithValue("type", w.type);
            int d = cmd.ExecuteNonQuery();
            conn.Close();
            return (d == 0 ? false : true);
        }
        public bool deleteWatch(int id)
        {
            conn.Open();
            string sql = "delete from watch where id=" + id;
            SqlCommand cmd = new SqlCommand(sql, conn);
            int d = cmd.ExecuteNonQuery();
            conn.Close();
            return (d == 0 ? false : true);
        }
        public int getIdAfter(string tableName)
        {
            conn.Open();
            string sql = "select IDENT_CURRENT('" + tableName + "')+1 ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int id = Convert.ToInt32(dr[0]);
            conn.Close();
            return id;
        }
        public void insertOrder(Orders o)
        {
            conn.Open();
            string sql = "insert into orders values(@receive,@confirm,@state,@tenkh,@sdtkh,@diachikh)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("receive", o.receive);
            cmd.Parameters.AddWithValue("confirm", o.confirm);
            cmd.Parameters.AddWithValue("state", o.state);
            cmd.Parameters.AddWithValue("tenkh", o.tenkh);
            cmd.Parameters.AddWithValue("sdtkh", o.sdtkh);
            cmd.Parameters.AddWithValue("diachikh", o.diachikh);
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        public void deleteOrder(int id)
        {
            conn.Open();
            string sql = "delete from orders where id="+id;
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void deleteOrderDetail(int id)
        {
            conn.Open();
            string sql = "delete from orderdetail where orderid=" + id;
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void insertOrderDetail(OrderDetail od)
        {
            conn.Open();
            string sql = "insert into orderdetail values(@orderid,@productid,@gia,@soluong)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("orderid", od.orderid);
            cmd.Parameters.AddWithValue("productid", od.productid);
            cmd.Parameters.AddWithValue("gia", od.gia);
            cmd.Parameters.AddWithValue("soluong", od.soluong);
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        public DataTable showOrder()
        {
            conn.Open();
            string sql = "select * from orders";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;
        }
        public DataTable showDetailOrder(int id)
        {
            conn.Open();
            string sql = "select * from orderdetail inner join watch on orderdetail.productid=watch.id where orderid=" + id;
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;

        }
        public void duyetOrder(int id)
        {
            conn.Open();
            string sql = "update orders set state=1,confirm=@confirm where id=" + id;
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("confirm", DateTime.Now);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void huyDuyetOrder(int id)
        {
            conn.Open();
            string sql = "update orders set state=0 where id=" + id;
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public bool dangnhap(string user, string pass)
        {
            conn.Open();
            string sql = "select * from login where username=@user AND pass=@pass";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("user", user);
            cmd.Parameters.AddWithValue("pass", pass);
            var i = (cmd.ExecuteScalar());
            conn.Close();
            if (i != null)
            {
                return true;
            }
            return false;
        }
        public DataTable showWatch1(string name, string gioitinh, string min, string max)
        {
            conn.Open();
            string sql = "select watch.id, watch.name,gia,giamgia,round(gia-gia*giamgia/100,-5)as'gia2',anh " +
                         "from watch inner join category on watch.categoryid=category.id " +
                         "where watch.name like N'%" + name + "%'"
                         + (gioitinh == "Nam" ? " and gioitinh=N'Nam'" : " and gioitinh=N'Nữ'")
                         + (min != null ? (" and round(gia-gia*giamgia/100,-5)>=" + min) : "")
                         + (max != null ? (" and round(gia-gia*giamgia/100,-5)<=" + max) : "");
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            conn.Close();
            return dt;
        }
        public void XoaSP(int id)
        {
            conn.Open();
            string sql1 = "delete from watch where id=@id";
            SqlCommand cmd = new SqlCommand(sql1, conn);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public List<Watch> dssp()
        {
            List<Watch> dt = new List<Watch>();
            string sql = "select * from dbo.watch";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Watch bok = new Watch();
                bok.id = (int)dr["id"];
                bok.name= (string)dr["name"];
                bok.categoryid = (int)dr["categoryid"];
                bok.soluong = (int)dr["soluong"];
                bok.gia = (int)dr["gia"];
                bok.giamgia = (int)dr["giamgia"];
                bok.anh = (string)dr["anh"];
                bok.state = Convert.ToBoolean(dr["state"]);
                bok.baohanh = (string)dr["baohanh"];
                bok.kieumay = (string)dr["kieumay"];
                bok.gioitinh = (string)dr["gioitinh"];
                bok.kichco = (string)dr["kichco"];
                bok.doday = (string)dr["doday"];
                bok.chatlieuvo= (string)dr["chatlieuvo"];
                bok.chatlieuday = (string)dr["chatlieuday"];
                bok.chatlieukinh = (string)dr["chatlieukinh"];
                bok.chucnang = (string)dr["chucnang"];
                bok.dochiunuoc = (string)dr["dochiunuoc"];
                bok.mota = (string)dr["mota"];
                bok.type = (int)dr["type"];
                dt.Add(bok);
            }
            conn.Close();
            return dt;
        }

    }
}