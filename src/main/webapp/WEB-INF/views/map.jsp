<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html>
<%@ include file="banner.jsp"%>
<hr><br><br><br>
	
  <head>
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 700px;
        width: 900px;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
  <center>
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 37.501311, lng: 127.037471},
          zoom: 15
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD_Wo6RSdiNvMn6GnrrpRHs2Jq02aR78-c&callback=initMap"
    async defer></script>
    <%@ include file="footer.jsp"%>
  </body>
</html>