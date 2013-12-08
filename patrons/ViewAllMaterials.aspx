<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="ViewAllMaterials.aspx.vb" Inherits="librarians_allmaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [MatID], [Type], [CallNumber], [Title], [Author], [Publisher], [Year], [ISBN], [PhotoName], [Avail] FROM [SLPL_Materials]"></asp:SqlDataSource>
<asp:GridView 
    ID="GridView1" 
    runat="server" 
    AutoGenerateColumns="False" 
    DataKeyNames="MatID" 
    DataSourceID="SqlDataSource1" 
    style="margin-bottom: 0px"
    PageSize="10"
    Gridlines="None"
    CssClass="cssgridview"
    HeaderStyle-CssClass="header"
    PagerStyle-CssClass="pgr"
    AllowPaging="True" 
    AllowSorting="True" 
    alternatingrowstyle-CssClass="alt"
    >
    <Columns>
        <asp:BoundField DataField="MatID" HeaderText="MatID" InsertVisible="False" ReadOnly="True" SortExpression="MatID" />
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        <asp:BoundField DataField="CallNumber" HeaderText="CallNumber" SortExpression="CallNumber" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
        <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
        <asp:BoundField DataField="PhotoName" HeaderText="PhotoName" SortExpression="PhotoName" />
        <asp:BoundField DataField="Avail" HeaderText="Avail" SortExpression="Avail" />
        <asp:HyperLinkField DataNavigateUrlFields="MatID" DataNavigateUrlFormatString="MaterialDetails.aspx?MatID={0}" Text="Select" />
    </Columns>
</asp:GridView>
</asp:Content>

