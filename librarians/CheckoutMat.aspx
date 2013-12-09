<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="CheckoutMat.aspx.vb" Inherits="librarians_RentMat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    Username:  <asp:TextBox ID="tb_UserName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_UserName" ErrorMessage="Please enter a valid username"></asp:RequiredFieldValidator>
    <br />
    <br />

    Material ID:    <asp:TextBox ID="tb_MatID" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_MatID" ErrorMessage="Please enter a valid material ID"></asp:RequiredFieldValidator>

    <br />
    <br />

    <asp:Button ID="btn_Checkout" runat="server" Text="Check Material Out" />

</asp:Content>