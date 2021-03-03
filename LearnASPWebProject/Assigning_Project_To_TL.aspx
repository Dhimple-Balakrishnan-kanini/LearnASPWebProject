<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Assigning_Project_To_TL.aspx.cs" Inherits="LearnASPWebProject.Assigning_Project_To_TL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="proID" runat="server" Text="Project ID"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProjectId" DataValueField="ProjectId">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBReleaseManagementConnectionString3 %>" SelectCommand="SELECT [ProjectId] FROM [Project]"></asp:SqlDataSource><br />
        <asp:Label ID="ProName" runat="server" Text="Project Name"></asp:Label>
      <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="ProjectName" DataValueField="ProjectName" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBReleaseManagementConnectionString5 %>" SelectCommand="SELECT [ProjectName] FROM [Project]"></asp:SqlDataSource><br />
    <asp:Label ID="TLID" runat="server" Text="Team Lead ID"></asp:Label>
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TLId" DataValueField="TLId">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBReleaseManagementConnectionString4 %>" SelectCommand="SELECT [TLId] FROM [TeamLeaders]"></asp:SqlDataSource><br />
    <asp:Label ID="TLName" runat="server" Text="Team Lead Name"></asp:Label>
 <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="TlName" DataValueField="TlName">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBReleaseManagementConnectionString6 %>" SelectCommand="SELECT [TlName] FROM [TeamLeaders]"></asp:SqlDataSource>

    
 
    
    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
    <asp:Label ID="LInsertMessage" runat="server"></asp:Label>


</asp:Content>
