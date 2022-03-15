<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="lienhe.aspx.cs" Inherits="ShopWatch.lienhe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 584px;
        }
        .auto-style2 {
            width: 386px;
        }
        .auto-style3 {
            width: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="auto-style1">
        <tr>
            <td rowspan="11" class="auto-style3">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d553.6349890808848!2d105.84107275405323!3d21.016778442393996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abfe37d2893b%3A0x78cd9dcf4fbefd45!2zU2hvcFdhdGNoIC0gxJDhu5NuZyBo4buTIMSRZW8gdGF5IGNow61uaCBow6NuZw!5e0!3m2!1svi!2s!4v1599195749019!5m2!1svi!2s" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" class="auto-style2"></iframe>
            </td>
            <td style="border-radius:10% 10% 10% 10%">
                <asp:Button  ID="Button1"  runat="server" BackColor="Red" Font-Bold="True" Font-Size="Larger" ForeColor="White" Text="gọi ngay!" Width="335px" Height="49px"  />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1"  runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#666633" Text="------Bạn cần trợ giúp?--------"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Tên của bạn"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="321px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="318px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Điện thoại"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="315px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Lời nhắn"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="82px" Width="315px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" Text="Gửi" Width="49px" />
            </td>
        </tr>
    </table>
<br />

</asp:Content>
