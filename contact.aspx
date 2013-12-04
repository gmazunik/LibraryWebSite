<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://maps.google.com/maps?file=api&amp;v=3.6&amp;key=<AIzaSyAD4OAUjYKJbqIHH7FOJaGUYb7PErAdvgY>&sensor=false"
        type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Contact Info</h2>
    <div id="map" style="width: 500px; height: 500px"></div>
</asp:Content>

