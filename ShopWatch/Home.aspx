<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ShopWatch.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .img{
            max-width:100%;
        }
        h2 {
           width: 100%; 
           text-align: center; 
           border-bottom: 1px solid #c8c0c0; 
           line-height: 0.1em;
           margin: 10px 0 20px; 
        }
        h2 span {
            font-weight:bold;
            background:#fff; 
            padding:0 10px; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <img src="../Image/homePic.jpg" width="1050" />
    <br /><br /><h2><span>THƯƠNG HIỆU NỔI TIẾNG</span></h2><br />
    <div>
        <img src="Image/seiko.jpg" width="260"/>
        <img src="Image/orient.jpg" width="260"/>
        <img src="Image/op.jpg" width="260"/>
        <img src="Image/casio.jpg" width="260"/>
    </div>

    <br /><br /><h2><span>HOT SALE</span></h2><br />
    <asp:DataList ID="dlHotSale" RepeatColumns="4" runat="server">
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

    <br /><br /><h2><span>ĐỒNG HỒ CASIO</span></h2><br />
    <asp:DataList ID="dlCASIO" RepeatColumns="4" runat="server">
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


    <br /><br /><h2><span>ĐỒNG HỒ ORIENT</span></h2><br />
    <asp:DataList ID="dlORIENT" RepeatColumns="4" runat="server">
        <ItemTemplate>
            <div style="text-align:center;width:270px;">
                <div style="position:absolute;"><img src="../Image/sale.png" width="50" /></div>
                <div style="position:absolute;height:50px;line-height:50px;">&nbsp<asp:Label ID="Label10" Text='<%#"-"+Eval("giamgia")+"%"%>' ForeColor="White" Font-Size="15" runat="server"></asp:Label></div>
                <asp:HyperLink ID="HyperLink1" ImageUrl='<%#"~/Image/Watch/"+Eval("id")+Eval("anh")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' CssClass="img" ImageWidth="100%" ImageHeight="280px" runat="server"></asp:HyperLink>
                <br /><div style="margin:0 30px;"><asp:HyperLink ID="HyperLink2" Text='<%#Eval("name")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' ForeColor="Red" Font-Underline="false" runat="server"></asp:HyperLink></div>
                <span style="text-decoration:line-through;"><asp:Label ID="Label1" runat="server" Text='<%#Eval("gia","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>&nbsp;
                <span style="font-weight:bold;"><asp:Label ID="Label2" runat="server" Text='<%#Eval("gia2","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
            </div>
        </ItemTemplate>
    </asp:DataList>


    <br /><br /><h2><span>ĐỒNG HỒ SEIKO</span></h2><br />
    <asp:DataList ID="dlSEIKO" RepeatColumns="4" runat="server">
        <ItemTemplate>
            <div style="text-align:center;width:270px;">
                <div style="position:absolute;"><img src="../Image/sale.png" width="50" /></div>
                <div style="position:absolute;height:50px;line-height:50px;">&nbsp<asp:Label ID="Label10" Text='<%#"-"+Eval("giamgia")+"%"%>' ForeColor="White" Font-Size="15" runat="server"></asp:Label></div>
                <asp:HyperLink ID="HyperLink1" ImageUrl='<%#"~/Image/Watch/"+Eval("id")+Eval("anh")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' CssClass="img" ImageWidth="100%" ImageHeight="280px" runat="server"></asp:HyperLink>
                <br /><div style="margin:0 30px;"><asp:HyperLink ID="HyperLink2" Text='<%#Eval("name")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' ForeColor="Red" Font-Underline="false" runat="server"></asp:HyperLink></div>
                <span style="text-decoration:line-through;"><asp:Label ID="Label1" runat="server" Text='<%#Eval("gia","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>&nbsp;
                <span style="font-weight:bold;"><asp:Label ID="Label2" runat="server" Text='<%#Eval("gia2","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
            </div>
        </ItemTemplate>
    </asp:DataList>


    <br /><br /><h2><span>ĐỒNG HỒ OP</span></h2><br />
    <asp:DataList ID="dlOP" RepeatColumns="4" runat="server">
        <ItemTemplate>
            <div style="text-align:center;width:270px;">
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
