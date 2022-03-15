<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="ShopWatch.Admin.QuanLySanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" >
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Mã sản phẩm" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Tên sản phẩm" SortExpression="name" />
            <asp:BoundField DataField="categoryid" HeaderText="Mã danh mục" SortExpression="categoryid" />
            <asp:BoundField DataField="soluong" HeaderText="Số lượng" SortExpression="soluong" />
            <asp:BoundField DataField="gia" HeaderText="Giá" SortExpression="gia" />
            <asp:BoundField DataField="giamgia" HeaderText="Giảm giá" SortExpression="giamgia" />
            <asp:BoundField DataField="anh" HeaderText="Ảnh" SortExpression="anh" />
            <asp:CheckBoxField DataField="state" HeaderText="Trạng thái" SortExpression="state" />
            <asp:BoundField DataField="baohanh" HeaderText="Bảo hành" SortExpression="baohanh" />
            <asp:BoundField DataField="kieumay" HeaderText="Kiểu máy" SortExpression="kieumay" />
            <asp:BoundField DataField="gioitinh" HeaderText="Giới tính" SortExpression="gioitinh" />
            <asp:BoundField DataField="kichco" HeaderText="Kích cỡ" SortExpression="kichco" />
            <asp:BoundField DataField="doday" HeaderText="Độ dày" SortExpression="doday" />
            <asp:BoundField DataField="chatlieuvo" HeaderText="Chất liệu vỏ" SortExpression="chatlieuvo" />
            <asp:BoundField DataField="chatlieuday" HeaderText="Chất liệu dày" SortExpression="chatlieuday" />
            <asp:BoundField DataField="chatlieukinh" HeaderText="Chất liệu kính" SortExpression="chatlieukinh" />
            <asp:BoundField DataField="chucnang" HeaderText="Chức năng" SortExpression="chucnang" />
            <asp:BoundField DataField="dochiunuoc" HeaderText="Độ chịu nước" SortExpression="dochiunuoc" />
            <asp:BoundField DataField="mota" HeaderText="Mô tả" SortExpression="mota" />
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>


    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopWatchConnectionString %>" DeleteCommand="DELETE FROM [watch] WHERE [id] = @id" InsertCommand="INSERT INTO [watch] ([name], [categoryid], [soluong], [gia], [giamgia], [anh], [state], [baohanh], [kieumay], [gioitinh], [kichco], [doday], [chatlieuvo], [chatlieuday], [chatlieukinh], [chucnang], [dochiunuoc], [mota], [type]) VALUES (@name, @categoryid, @soluong, @gia, @giamgia, @anh, @state, @baohanh, @kieumay, @gioitinh, @kichco, @doday, @chatlieuvo, @chatlieuday, @chatlieukinh, @chucnang, @dochiunuoc, @mota, @type)" SelectCommand="SELECT * FROM [watch]" UpdateCommand="UPDATE [watch] SET [name] = @name, [categoryid] = @categoryid, [soluong] = @soluong, [gia] = @gia, [giamgia] = @giamgia, [anh] = @anh, [state] = @state, [baohanh] = @baohanh, [kieumay] = @kieumay, [gioitinh] = @gioitinh, [kichco] = @kichco, [doday] = @doday, [chatlieuvo] = @chatlieuvo, [chatlieuday] = @chatlieuday, [chatlieukinh] = @chatlieukinh, [chucnang] = @chucnang, [dochiunuoc] = @dochiunuoc, [mota] = @mota, [type] = @type WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="categoryid" Type="Int32" />
            <asp:Parameter Name="soluong" Type="Int32" />
            <asp:Parameter Name="gia" Type="Int32" />
            <asp:Parameter Name="giamgia" Type="Int32" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="state" Type="Boolean" />
            <asp:Parameter Name="baohanh" Type="String" />
            <asp:Parameter Name="kieumay" Type="String" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="kichco" Type="String" />
            <asp:Parameter Name="doday" Type="String" />
            <asp:Parameter Name="chatlieuvo" Type="String" />
            <asp:Parameter Name="chatlieuday" Type="String" />
            <asp:Parameter Name="chatlieukinh" Type="String" />
            <asp:Parameter Name="chucnang" Type="String" />
            <asp:Parameter Name="dochiunuoc" Type="String" />
            <asp:Parameter Name="mota" Type="String" />
            <asp:Parameter Name="type" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="categoryid" Type="Int32" />
            <asp:Parameter Name="soluong" Type="Int32" />
            <asp:Parameter Name="gia" Type="Int32" />
            <asp:Parameter Name="giamgia" Type="Int32" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="state" Type="Boolean" />
            <asp:Parameter Name="baohanh" Type="String" />
            <asp:Parameter Name="kieumay" Type="String" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="kichco" Type="String" />
            <asp:Parameter Name="doday" Type="String" />
            <asp:Parameter Name="chatlieuvo" Type="String" />
            <asp:Parameter Name="chatlieuday" Type="String" />
            <asp:Parameter Name="chatlieukinh" Type="String" />
            <asp:Parameter Name="chucnang" Type="String" />
            <asp:Parameter Name="dochiunuoc" Type="String" />
            <asp:Parameter Name="mota" Type="String" />
            <asp:Parameter Name="type" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
