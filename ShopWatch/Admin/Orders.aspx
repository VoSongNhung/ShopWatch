<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="ShopWatch.Admin.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" OnRowDeleting="gvOrders_RowDeleting" OnRowEditing="gvOrders_RowEditing">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="id" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField HeaderText="Ngày nhận đơn" DataField="receive" DataFormatString="{0:dd-MM-yyyy HH:mm}"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField HeaderText="Ngày duyệt đơn" DataField="confirm" DataFormatString="{0:dd-MM-yyyy HH:mm}"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField HeaderText="Trạng thái" DataField="state"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField HeaderText="Tên KH" DataField="tenkh"  ItemStyle-Width="150px"/>
            <asp:BoundField HeaderText="SĐT KH" DataField="sdtkh" ItemStyle-Width="150px"/>
            <asp:BoundField HeaderText="Địa chỉ KH" DataField="diachikh" ItemStyle-Width="200px"/>
            <asp:CommandField EditText="XEM" ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <RowStyle Height="30px" />
    </asp:GridView>
</asp:Content>
