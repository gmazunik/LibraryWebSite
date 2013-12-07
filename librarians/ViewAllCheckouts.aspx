<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="ViewAllCheckouts.aspx.vb" Inherits="librarians_ViewAllRentals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>"
            SelectCommand="SELECT [materialID], [patronID], [dateOut], [dateDue], [available] FROM [SLPL_Checkouts]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="patronID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="materialID" HeaderText="materialID" SortExpression="materialID" />
                <asp:BoundField DataField="patronID" HeaderText="patronID" ReadOnly="True" SortExpression="patronID" />
                <asp:BoundField DataField="dateOut" HeaderText="dateOut" SortExpression="dateOut" />
                <asp:BoundField DataField="dateDue" HeaderText="dateDue" SortExpression="dateDue" />
                <asp:CheckBoxField DataField="available" HeaderText="available" SortExpression="available" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

