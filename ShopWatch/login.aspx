<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ShopWatch.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #login{
            justify-content:center;
            align-content:center;
            text-align:center;
            
        }
        .auto-style1 {
            width: 100%;
            padding:0px;
            margin: 1px;
            
        }
        .auto-style2 {
            width: 195px;
            height: 26px;
            margin-left: 0px;
        }
        span{
            text-align:left;
        }
        .auto-style3 {
            height: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="login">
            <h1 style="align-content:center"><a href="https://vi.wordpress.org/">
                <img style="justify-content: center" src="../Image/login.png" alt="không tìm thấy ảnh" width="80" height="80"/></a></h1>
            <p style="align-content:center">
                <span style="color:red"><asp:Label ID="lblReport" runat="server"></asp:Label></span>
            </p>
            <table cellpadding="0" cellspacing="0" class="auto-style1" >
                <tr>
                    <td> 
                        <asp:Label ID="Label1" runat="server" Text="Tên người dùng hoặc địa chỉ email"></asp:Label>
                          <br />
                        <asp:TextBox ID="txtUser" runat="server" Height="26px" Width="199px"></asp:TextBox>
                        <br />
                        <span style="text-align:left"><asp:Label ID="Label2" runat="server" > Mật Khẩu</asp:Label></span>
                          <br />
                        <input id="pass" class="auto-style2" type="password" runat="server" /><br />
                        <input id="Checkbox1" type="checkbox" class="auto-style3" /> Tự động đăng nhập 
                        <asp:Button ID="Button1" runat="server" Text="đăng nhập" BackColor="Blue" Height="35px" OnClick="Button1_Click"  />
                        <br />

                        
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

