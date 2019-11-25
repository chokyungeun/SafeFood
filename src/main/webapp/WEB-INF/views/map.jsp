<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="banner.jsp"%>
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<style>
#map_canvas {
	float: left;
	width: 700px;
	height: 600px;
}
</style>
<div class="container-fluid">
	<div class="container place">
		<div class="row">
			<div class="section_top">
				<div class="title_text title_animation active" style="font-family: 'Sunflower', sans-serif;">
					검색 하고 싶은 음식을<br> <span class="en" style="color:red">내 알러지를 부탁해</span>에서
					검색해보세요.

				</div>
				<!--//텍스트-->
				<div class="title_search title_animation active" style="font-family: 'Sunflower', sans-serif;">
					<!--검색창-->
					<input type="text" id="autocomplete" class="form-control input-lg"
						placeholder="메뉴검색"><br>
				</div>
				<!--/검색창-->
			</div>
		</div>
		<div class="row">
			<div class="col-xs-10">
				<div class="container" id="map_canvas">
				</div>
			</div>
			<right>
			<div class="container" id="search_result" style="font-family: 'Sunflower', sans-serif;">
					<span style="font-size:30px; color:black">[검색 결과]</span>
			</div>
			<div class="container" id="listing" style="font-family: 'Sunflower', sans-serif;">
				<div class="row">
					<table id="results"></table>
				</div>
			</div>
			<div class="col-xs-2">
				<div id="controls">
					<form name="controls">
						<input type="hidden" name="type" value="hospital" onclick="search()" />
						<input style="display:none" type="radio" name="type" value="restaurant" onclick="search()" checked="checked"/> <br /> 
					</form>
				</div>
			</div>
		</div>

		
	</div>
</div>
<%@ include file="footer.jsp"%>
<!--지도 스크립트-->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAYKzUIKnEoEZGtVW92nQBRxzfIyxV1Hvk&sensor=false&libraries=places"></script>
<script>
	var map, places, iw;
	var markers = [];
	var autocomplete;
	function initialize() {
		var myLatlng = new google.maps.LatLng(37.501311, 127.037471);
		var myOptions = {
			zoom : 14,
			center : myLatlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById('map_canvas'),
				myOptions);
		places = new google.maps.places.PlacesService(map);
		google.maps.event.addListener(map, 'tilesloaded', tilesLoaded);
		autocomplete = new google.maps.places.Autocomplete(document
				.getElementById('autocomplete'));
		google.maps.event.addListener(autocomplete, 'place_changed',
				function() {
					showSelectedPlace();
				});
	}
	function tilesLoaded() {
		google.maps.event.clearListeners(map, 'tilesloaded');
		google.maps.event.addListener(map, 'zoom_changed', search);
		google.maps.event.addListener(map, 'dragend', search);
		search();
	}
	function showSelectedPlace() {
		clearResults();
		clearMarkers();
		var place = autocomplete.getPlace();
		//alert(place.geometry.location);
		map.panTo(place.geometry.location);
		markers[0] = new google.maps.Marker({
			position : place.geometry.location,
			map : map
		});
		iw = new google.maps.InfoWindow({
			content : getIWContent(place)
		});
		iw.open(map, markers[0]);
	}
	function search() {
		var type;
		for (var i = 0; i < document.controls.type.length; i++) {
			if (document.controls.type[i].checked) {
				type = document.controls.type[i].value;
			}
		}
		autocomplete.setBounds(map.getBounds());
		var search = {
			bounds : map.getBounds()
		};
		if (type != 'establishment') {
			search.types = [ type ];
		}
		places.search(search, function(results, status) {
			if (status == google.maps.places.PlacesServiceStatus.OK) {
				clearResults();
				clearMarkers();
				for (var i = 0; i < results.length; i++) {
					markers[i] = new google.maps.Marker({
						position : results[i].geometry.location,
						animation : google.maps.Animation.DROP
					});
					google.maps.event.addListener(markers[i], 'click',
							getDetails(results[i], i));
					setTimeout(dropMarker(i), i * 100);
					addResult(results[i], i);
				}
			}
		});
	}
	function clearMarkers() {
		for (var i = 0; i < markers.length; i++) {
			if (markers[i]) {
				markers[i].setMap(null);
				markers[i] == null;
			}
		}
	}
	function dropMarker(i) {
		return function() {
			markers[i].setMap(map); //빨간 핀이 떨어지는 애
		}
	}
	function addResult(result, i) {
		var num=4;
		var results = document.getElementById('results');
		var tr = document.createElement('tr');
		tr.style.backgroundColor = (i % 2 == 0 ? '#F0F0F0' : '#FFFFFF');
		tr.onclick = function() {
			google.maps.event.trigger(markers[i], 'click');
		};
		var iconTd = document.createElement('td');
		var nameTd = document.createElement('td');
		var icon = document.createElement('img');
		//icon.src = result.icon.replace('http:', ''); //아이콘 그림
		icon.setAttribute('class', 'placeIcon');
		var name = document.createTextNode(result.name);
		iconTd.appendChild(icon); //아이콘 그림
		nameTd.appendChild(name);
		tr.appendChild(iconTd);
		tr.appendChild(nameTd);
		results.appendChild(tr); //검색 리스트 띄우는 애(글자)
	}
	function clearResults() {
		var results = document.getElementById('results');
		while (results.childNodes[0]) {
			results.removeChild(results.childNodes[0]);
		}
	}
	function getDetails(result, i) {
		return function() {
			places.getDetails({
				reference : result.reference
			}, showInfoWindow(i));
		}
	}
	function showInfoWindow(i) {
		return function(place, status) {
			if (iw) {
				iw.close();
				iw = null;
			}
			if (status == google.maps.places.PlacesServiceStatus.OK) {
				iw = new google.maps.InfoWindow({
					content : getIWContent(place)
				});
				iw.open(map, markers[i]);
			}
		}
	}
	function getIWContent(place) {
		var content = '<table style="border:0"><tr><td style="border:0;">';
		content += '<img class="placeIcon" src="' + place.icon + '"></td>';
		content += '<td style="border:0;"><b><a href="' + place.url + '">'
				+ place.name + '</a></b>';
		content += '</td></tr></table>';
		return content;
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>
</body>
</html>