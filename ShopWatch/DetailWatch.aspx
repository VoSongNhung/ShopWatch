<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetailWatch.aspx.cs" Inherits="ShopWatch.DetailWatch" %>
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

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table cellpadding="0" cellspacing="0" class="tb">
        <tr>
            <td rowspan="17" style="width:50%;vertical-align:top;">
                <div style="position:absolute;"><img src="../Image/sale.png" width="50" /></div>
                <div style="position:absolute;height:50px;line-height:50px;">&nbsp<asp:Label ID="lbGiamGia" ForeColor="White" Font-Size="15" runat="server"></asp:Label></div>
                <img src=<%="Image/Watch/"+id.ToString()+anh %> style="max-width:100%;"/>
            </td>
            <td colspan="2" style="width:50%;font-size:25px;">
                <asp:Button ID="btSua" runat="server" Text="Sửa" OnClick="btSua_Click" style="width:50px;height:30px;background-color:red;color:white;"/>
                <asp:Button ID="btXoa" runat="server" Text="Xóa" OnClick="btXoa_Click" OnClientClick="if (!xoa()) return false;"  style="width:50px;height:30px;background-color:red;color:white;"/><br />
                <asp:Label ID="lbName" runat="server"></asp:Label>
                <br /><br /><span style="text-decoration:line-through;"><asp:Label ID="lbGia" runat="server"></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>&nbsp;
                <span style="font-weight:bold;"><asp:Label ID="lbGia2" runat="server"></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
                <br /><img src="Image/review.jpg" style="max-width:100%;margin:10px 0;"/>
                <br />
                <asp:Button ID="Button2" runat="server" Text="ĐẶT MUA NGAY" style="float:left;text-align:center; font-size:16px;color:white;background-color:#138d43;height:50px;line-height:50px;width:200px;margin-bottom:10px;" OnClick="Button2_Click"/>
                <div style="float:right; text-align:center;font-size:16px;color:white;background-color:#6D6E71;height:50px;line-height:50px;width:250px;margin-bottom:10px;">
                    <asp:HyperLink ID="HyperLink2" runat="server">GỌI NGAY: 097 559 2299</asp:HyperLink>
                </div>
                
                <div style="float:left; text-align:center;font-size:16px;color:white;background-color:#f59231;height:50px;line-height:50px;width:100%;margin-bottom:10px;">
                    ĐẶT HÀNG NHANH *
                    <asp:TextBox ID="txtSDT" placeholder="Nhập số điện thoại" Height="30px" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Gửi" Height="30px" Width="50px" BackColor="Red" ForeColor="White" />
                </div>
                <div style="float:left; text-align:center;color:white;background-color:red;height:50px;line-height:50px;width:100%;margin-bottom:10px;">
                    ĐẠI LÝ ĐỒNG HỒ CHÍNH HÃNG #1 VIỆT NAM
                </div>
            </td>
        </tr>
        <tr>
            <td class="td1" style="min-width:150px;">&nbsp;Bảo hiểm ShopWatch</td>
            <td>&nbsp;Phát hiện Fake đền gấp 10 lần</td>
        </tr>
        <tr>
            <td class="td1">&nbsp;Bảo hành</td>
            <td>
                <asp:Label ID="lbBaoHanh" runat="server"></asp:Label>
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
                <asp:Label ID="lbThuongHieu" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Xuất xứ</td>
            <td style="margin-left: 40px">
                <asp:Label ID="lbXuatXu" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Kiểu máy</td>
            <td>
                <asp:Label ID="lbKieuMay" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Đồng hồ dành cho</td>
            <td>
                <asp:Label ID="lbGioiTinh" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Kích cỡ</td>
            <td>
                <asp:Label ID="lbKichCo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Độ dày</td>
            <td>
                <asp:Label ID="lbDoDay" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Chất liệu vỏ</td>
            <td>
                <asp:Label ID="lbChatLieuVo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Chất liệu dây</td>
            <td>
                <asp:Label ID="lbChatLieuDay" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Chất liệu kính</td>
            <td>
                <asp:Label ID="lbChatLieuKinh" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Chức năng</td>
            <td>
                <asp:Label ID="lbChucNang" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td2">&nbsp;Độ chịu nước</td>
            <td>
                <asp:Label ID="lbDoChiuNuoc" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
    <script type="text/javascript">
        function xoa() {
            return confirm("Bạn có chắc chắn xóa?");
        }
    </script>
</asp:Content>
