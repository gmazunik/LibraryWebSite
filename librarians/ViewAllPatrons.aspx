<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="ViewAllPatrons.aspx.vb" Inherits="librarians_ViewAllPatrons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [UserID], [FirstName], [LastName], [Birthdate], [Address1], [Address2], [City], [State], [Zip], [PhoneNumber], [PhoneNumber1], [PrimaryEmail] FROM [SLPL_UserProfile]"></asp:SqlDataSource>
    
    
    
    <div id="caption">
        <h1>PATRONS</h1>
    </div>

    <div id="search">
            <asp:TextBox ID="tb_search" runat="server" Width="400px"></asp:TextBox>
            <asp:Button ID="btn_search" runat="server" Text="Search Patron"/>
    </div> 

    <br />

    <br />

    <asp:GridView ID="GridView1" 
        runat="server" 
        AutoGenerateColumns="False" 
        DataKeyNames="UserID" 
        DataSourceID="SqlDataSource1"
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
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="PrimaryEmail" HeaderText="PrimaryEmail" SortExpression="PrimaryEmail" />
            <asp:HyperLinkField DataNavigateUrlFields="UserID" DataNavigateUrlFormatString="PatronDetails.aspx?UserID={0}" Text="Select" />
        </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>

</asp:Content>

