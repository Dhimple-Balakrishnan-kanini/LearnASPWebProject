<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="LearnASPWebProject.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table>
        <tr>
            <td>
                <asp:Label ID="LEmployeeID" runat="server" Text="Employee ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TEmployeeID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LEmployeeName" runat="server" Text="Employee Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TEmployeeName" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="LEmployeeRole" runat="server" Text="Employee Role"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TEmployeeRole" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
    <asp:Label ID="Lmessage" runat="server" ></asp:Label>
</asp:Content>

