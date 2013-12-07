<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="MaterialsDue.aspx.vb" Inherits="librarians_MaterialsDue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>"
        SelectCommand="SELECT * FROM [SLPL_Checkouts]"></asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKey="RentalID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
            <asp:BoundField DataField="MatID" HeaderText="Material ID" SortExpression="MatID" />
            <asp:BoundField DataField="RentDate" HeaderText="Checkout Date" SortExpression="RentDate" />
            <asp:BoundField DataField="DueDate" HeaderText="Date Due" SortExpression="Due Date" />
            <asp:BoundField DataField="RentalID" HeaderText="Rental ID" SortExpression="RentalID" InsertVisible="false" ReadOnly="true" />
        </Columns>
    
    </asp:GridView>


</asp:Content>

