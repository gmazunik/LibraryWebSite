<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="CheckinMat.aspx.vb" Inherits="librarians_CheckinMat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    Material ID of Check-In: <asp:TextBox ID="tb_MatID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a valid material ID"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btn_Checkin" runat="server" Text="Check Material In" />

</asp:Content>

