<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Op.aspx.cs" Inherits="ShopWatch.Op" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .link{
            color:red;
            text-decoration:none;
            margin:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="text-align:center;">
        <asp:HyperLink ID="HyperLink1" CssClass="link" NavigateUrl="~/Op.aspx?max=1000000" runat="server">Dưới 1 triệu</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" CssClass="link" NavigateUrl="~/Op.aspx?min=1000000&max=3000000" runat="server">Từ 1 triệu - 3 triệu</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" CssClass="link" NavigateUrl="~/Op.aspx?min=3000000&max=5000000" runat="server">Từ 3 triệu - 5 triệu</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" CssClass="link" NavigateUrl="~/Op.aspx?min=5000000&max=7000000" runat="server">Từ 5 triệu - 7 triệu</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" CssClass="link" NavigateUrl="~/Op.aspx?min=7000000" runat="server">Trên 7 triệu</asp:HyperLink>
    </div>
    <br />
    <asp:DataList ID="dlOP" RepeatColumns="4" runat="server">
        <ItemTemplate>
            <div style="text-align:center;width:270px;height:350px;">
                <div style="position:absolute;"><img src="../Image/sale.png" width="50" /></div>
                <div style="position:absolute;height:50px;line-height:50px;">&nbsp<asp:Label ID="Label10" Text='<%#"-"+Eval("giamgia")+"%"%>' ForeColor="White" Font-Size="15" runat="server"></asp:Label></div>
                <asp:HyperLink ID="HyperLink1" ImageUrl='<%#"~/Image/Watch/"+Eval("id")+Eval("anh")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' CssClass="img" ImageWidth="100%" ImageHeight="280px" runat="server"></asp:HyperLink>
                <br /><div style="margin:0 30px;"><asp:HyperLink ID="HyperLink2" Text='<%#Eval("name")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' ForeColor="Red" Font-Underline="false" runat="server"></asp:HyperLink></div>
                <span style="text-decoration:line-through;"><asp:Label ID="Label1" runat="server" Text='<%#Eval("gia","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>&nbsp;
                <span style="font-weight:bold;"><asp:Label ID="Label2" runat="server" Text='<%#Eval("gia2","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
