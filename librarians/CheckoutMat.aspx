<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="CheckoutMat.aspx.vb" Inherits="librarians_RentMat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    Username:  <asp:TextBox ID="tb_UserName" runat="server"></asp:TextBox>
    <br />
    <br />

    Material ID:    <asp:TextBox ID="tb_MatID" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Button ID="btn_Checkout" runat="server" Text="Check Material Out" />

</asp:Content>