﻿<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" onload = "initialize()">
    

    <br />

    <h2>Email Us At <a href="mailto:ui.6k183@gmail.com">ui.6k183@gmail.com</a></h2>

    <br /><br />
    
</asp:Content>


<%--<h2>Contact Info</h2>
     <div>
            <input type="text" name="start" id="start" value="Enter Address, Postal Code, City, etc." onclick="document.getElementById(this.id).value = '';" />
            <button onclick="calcRoute()">Submit</button>
            <button onclick="initialize()">Reset</button>
        </div>
         
    <div id="map_canvas" ></div>
    
    
    <!--https://code.google.com/apis/console/?noredirect#project:546598111789:access-->
      <!--https://developers.google.com/maps/documentation/javascript/tutorial#api_key-->
      <!--http://www.commerx.com/how-to-make-a-google-map-that-gives-directions/-->

      <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=[AIzaSyBwRAug6NNtrPtoqsc0NpURdoCdtSy8YWg]&sensor=false"></script>
    <script type="text/javascript">
        var directionDisplay;
        var directionsService = new google.maps.DirectionsService();
        var map;

        function initialize() {
            directionsDisplay = new google.maps.DirectionsRenderer();
            var headquarters = new google.maps.LatLng(51.0426981, -114.0737685);
            var myOptions = {
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: headquarters
            }
            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

            // Add A Marker For Our Headquarters 
            var headquartersMarker = new google.maps.Marker({
                position: headquarters,
                map: map,
                animation: google.maps.Animation.DROP,
                zIndex: 99999
            });

            directionsDisplay.setMap(map);
        }

        // Calculate the route  
        function calcRoute() {
            var start = document.getElementById("start").value;
            var end = new google.maps.LatLng(51.0426981, -114.0737685);
            var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.DirectionsTravelMode.DRIVING
            };

            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });

            var endMarker = new google.maps.Marker({
                position: end,
                map: map,
            });
        }
    </script>  --%>

