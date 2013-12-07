<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="ViewAllCheckouts.aspx.vb" Inherits="librarians_ViewAllRentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>"
            SelectCommand="SELECT [RentalID], [UserName], [MatID], [RentDate], [DateDue] FROM [SLPL_Rentals]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RentalID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="RentalID" HeaderText="RentalID" SortExpression="RentalID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="MatID" HeaderText="MatID" SortExpression="MatID" />
                <asp:BoundField DataField="RentDate" HeaderText="RentDate" SortExpression="RentDate" />
                <asp:BoundField DataField="DateDue" HeaderText="DateDue" SortExpression="DateDue" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

