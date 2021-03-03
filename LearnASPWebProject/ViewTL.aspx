<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="ViewTL.aspx.cs" Inherits="LearnASPWebProject.ViewTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="TLId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TLId" HeaderText="TLId" ReadOnly="True" SortExpression="TLId" />
            <asp:BoundField DataField="TlName" HeaderText="TlName" SortExpression="TlName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBReleaseManagementConnectionString2 %>" SelectCommand="SELECT * FROM [TeamLeaders]"></asp:SqlDataSource>
</asp:Content>

