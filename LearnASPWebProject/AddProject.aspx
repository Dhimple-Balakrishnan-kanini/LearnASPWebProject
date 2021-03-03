<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="LearnASPWebProject.AddProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="LProjectID" runat="server" Text="Project ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TProjectID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LProjectName" runat="server" Text="Project Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TProjectName" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
    <asp:Label ID="LInsertMessage" runat="server"></asp:Label>
</asp:Content>
