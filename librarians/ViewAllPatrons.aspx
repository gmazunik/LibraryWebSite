﻿<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="ViewAllPatrons.aspx.vb" Inherits="librarians_ViewAllPatrons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [UserID], [FirstName], [LastName], [Birthdate], [Address1], [Address2], [City], [State], [Zip], [PhoneNumber], [PhoneNumber1], [PrimaryEmail] FROM [SLPL_UserProfile]"></asp:SqlDataSource>
    <div id="caption">
        <h1>Customers</h1>
    </div>
    <asp:GridView ID="GridView1" 
        runat="server" 
        AutoGenerateColumns="False" 
        DataKeyNames="UserID" 
        DataSourceID="SqlDataSource1"
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
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" SortExpression="Birthdate" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
            <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="PhoneNumber1" HeaderText="PhoneNumber1" SortExpression="PhoneNumber1" />
            <asp:BoundField DataField="PrimaryEmail" HeaderText="PrimaryEmail" SortExpression="PrimaryEmail" />
            <asp:HyperLinkField DataNavigateUrlFields="UserID" DataNavigateUrlFormatString="PatronDetails.aspx?UserID={0}" Text="Select" />
        </Columns>
    </asp:GridView>

</asp:Content>

