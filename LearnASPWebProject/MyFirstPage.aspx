<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyFirstPage.aspx.cs" Inherits="LearnASPWebProject.MyFirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hey!!Loook its my First Web application!!</h1>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LBLUsername" runat="server"  Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LBLPassword" runat="server"  Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
            </table>
        </div>
        <asp:Button ID="BTNReset" runat="server" Text="Reset" />
        <asp:Button ID="BTNLogin" runat="server" Text="Login" OnClick="BTNLogin_Click" style="height: 26px" /><br />
         <asp:Label ID="LBLMessage" runat="server" ></asp:Label>
    </form>
</body>
</html>
