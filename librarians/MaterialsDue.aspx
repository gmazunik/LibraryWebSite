<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="MaterialsDue.aspx.vb" Inherits="librarians_MaterialsDue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>"
SelectCommand="SELECT [RentalID], [UserName], [MatID], [DateDue], [RentDate] FROM [SLPL_Rentals]">
</asp:SqlDataSource>
 <div id="caption">
   <h1 >MATERIALS DUE</h1>
</div>
<asp:GridView ID="GridView1" 
    runat="server" 
    AutoGenerateColumns="False" 
    DataKey="RentalID" 
    DataSourceID="SqlDataSource1"
    style="margin-bottom: 0px"
    Gridlines="None"
    CssClass="cssgridview"
    HeaderStyle-CssClass="header"
    PagerStyle-CssClass="pgr"
    AllowPaging="True" 
    AllowSorting="True" 
    alternatingrowstyle-CssClass="alt" Width="795px">
        <Columns>
        <asp:BoundField DataField="RentalID" HeaderText="Rental ID"
        InsertVisible="False" ReadOnly="True" SortExpression="RentalID" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="MatID" HeaderText="Material ID" SortExpression="MatID" />
        <asp:BoundField DataField="RentDate" HeaderText="Checkout Date" SortExpression="RentDate" />
        <asp:BoundField DataField="DateDue" HeaderText="Date Due" SortExpression="Due Date" />
</Columns>
</asp:GridView>
 
</asp:Content>