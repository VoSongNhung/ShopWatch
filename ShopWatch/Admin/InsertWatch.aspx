<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="InsertWatch.aspx.cs" Inherits="ShopWatch.Admin.InsertWatch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tb {
            width: 100%;
        }
        .tb tr td{
            height:40px;
            vertical-align:central;
        }
        .td1{
            background-color:#6D6E71;
            color:white;
            border-bottom:3px solid;
        }
        .td2{
            background-color:#EDEDED;
            border-bottom:2px solid;
            border-color:white;
        }
        .txt{
            height:30px;
            width:500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="tb">
        <tr>
            <td class="td2">&nbsp;Loại sản phẩm</td>
            <td>
                <asp:DropDownList ID="listType" runat="server">
                    <asp:ListItem Text="Đồng hổ" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Hộp đựng đồng hổ" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Dây đồng hổ" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width:150px;">&nbsp;Tên sản phẩm</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;Số lượng</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtSoLuong" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;Giá</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;Giảm giá</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtGiamGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td1">&nbsp;Bảo hiểm ShopWatch</td>
            <td>&nbsp;Phát hiện Fake đền gấp 10 lần</td>
        </tr>
        <tr>
            <td class="td1">&nbsp;Bảo hành</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtBaoHanh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td1">&nbsp;Thẩm định thật giả</td>
            <td>&nbsp;Miễn phí</td>
        </tr>
        <tr>
            <td class="td1">&nbsp;Giao hàng</td>
            <td>&nbsp;Miễn phí toàn quốc</td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Thương hiệu</td>
            <td>
                <asp:DropDownList ID="listThuongHieu" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Kiểu máy</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtKieuMay" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Đồng hồ dành cho</td>
            <td>
                <asp:DropDownList ID="listGioiTinh" runat="server">
                    <asp:ListItem Text="Nam" Value="Nam"></asp:ListItem>
                    <asp:ListItem Text="Nữ" Value="Nữ"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Kích cỡ</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtKichCo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Độ dày</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtDoDay" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Chất liệu vỏ</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtChatLieuVo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Chất liệu dây</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtChatLieuDay" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Chất liệu kính</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtChatLieuKinh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Chức năng</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtChucNang" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Độ chịu nước</td>
            <td>
                <asp:TextBox CssClass="txt" ID="txtDoChiuNuoc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Mô tả</td>
            <td>
                <textarea id="txtMoTa" style="width:500px;height:100px;" runat="server"></textarea>
            </td>
        </tr>
        <tr>
            <td>&nbsp;Hình ảnh</td>
            <td>
                <asp:FileUpload ID="fileUpload" runat="server" Width="348px" Height="27px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Thêm" style="width:100px;height:50px;background-color:blue;color:white;" />

            </td>
        </tr>

    </table>
</asp:Content>
