<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShopWatch.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Khách" OnClick="Button1_Click" /><br /><asp:Button ID="Button2" runat="server" Text="Quản trị viên" OnClick="Button2_Click" />
</asp:Content>
