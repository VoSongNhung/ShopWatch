<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="DetailOrder.aspx.cs" Inherits="ShopWatch.Admin.DetailOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td style="width:400px;">SẢN PHẨM</td>
            <td style="width:180px;">GIÁ</td>
            <td style="width:100px;">SỐ LƯỢNG</td>
            <td style="width:400px;text-align:right;">TỔNG</td>
        </tr>
    </table>
    <hr />
    <asp:DataList ID="dlDetailOrder" RepeatColumns="1" runat="server">
        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="tb">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" ImageUrl='<%#"~/Image/Watch/"+Eval("id")+Eval("anh")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' ImageWidth="80px" ImageHeight="80px" runat="server"></asp:HyperLink>
                    </td>
                    <td style="width:300px;">
                        <asp:HyperLink ID="HyperLink2" Text='<%#Eval("name")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' ForeColor="Red" Font-Underline="false" runat="server"></asp:HyperLink>
                    </td>
                    <td style="width:200px;">&nbsp
                        <span style="font-weight:bold;"><asp:Label ID="Label2" runat="server" Text='<%#Eval("gia","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
                    </td>
                    <td style="width:100px;">
                        <asp:Label ID="txtSoLuong" Text='<%#Eval("soluong")%>' runat="server"></asp:Label>
                    </td>
                    <td style="width:400px;text-align:right;">
                        <span style="font-weight:bold;">
                            <asp:Label ID="lbTong" Text='<%#(Convert.ToInt32(Eval("soluong"))*Convert.ToInt32(Eval("gia"))).ToString("N0")%>' runat="server">

                            </asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
                    </td>
                </tr>
            </table>
            <hr />
        </ItemTemplate>
    </asp:DataList>
    <asp:Button ID="Button2" runat="server" Text="DUYỆT ĐƠN HÀNG" style="height:40px;background-color:blue;color:white;" OnClick="Button2_Click"/>
    <asp:Button ID="Button1" runat="server" Text="BỎ DUYỆT ĐƠN HÀNG" style="height:40px;background-color:red;color:white;" OnClick="Button1_Click"/>
</asp:Content>
