<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="ViewAllMaterials.aspx.vb" Inherits="librarians_allmaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div id="search">
            <asp:TextBox ID="tb_search" runat="server" Width="400px"></asp:TextBox>
            <asp:Button ID="btn_search" runat="server" Text="Librarian Material Search"/>
        </div>
    <br />

        <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [MatID], [Type], [CallNumber], [Title], [Author], [Publisher], [Year], [ISBN], [PhotoName], [Avail] FROM [SLPL_Materials]"></asp:SqlDataSource>
    <asp:GridView 
    ID="GridView1" 
    runat="server" 
    AutoGenerateColumns="False" 
    DataKeyNames="MatID" 
    DataSourceID="SqlDataSource1" 
    style="margin-bottom: 0px"
    Gridlines="None"
    CssClass="cssgridview"
    HeaderStyle-CssClass="header"
    PagerStyle-CssClass="pgr"
    AllowPaging="True" 
    AllowSorting="True" 
    alternatingrowstyle-CssClass="alt"
    >
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
    <Columns>
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
        <asp:BoundField DataField="Avail" HeaderText="Availability" SortExpression="Avail" />
        <asp:HyperLinkField DataNavigateUrlFields="MatID" DataNavigateUrlFormatString="~/librarians/MaterialDetails.aspx?MatID={0}" Text="Select" />
    </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pgr"></PagerStyle>
</asp:GridView>
</asp:Content>

