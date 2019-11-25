<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" style="font-family: 'Sunflower', sans-serif;">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">

<head>
<title>내 알러지를 부탁해 &mdash;</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Montserrat:400,700|Roboto&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<link rel="stylesheet" href="css/jquery.fancybox.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">

<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/aos.css">
<link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" >
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['성분', '함량'],
          ['탄수화물', ${flist.get(0)}],
          ['단백질', ${flist.get(1)}],
          ['지방',  ${flist.get(2)}],
          ['당류', ${flist.get(3)}],
          ['포화지방산', ${flist.get(4)}]
        ]);

        var options = {
          title: '오늘의 영양성분표',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
      
    </script>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-light">
	<a class="navbar-brand" href="main.food"
		style="font-family: 'Sunflower', sans-serif;">내 알러지를 부탁해</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor02" aria-controls="navbarColor02"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor02">
		<ul class="navbar-nav mr-auto">
		</ul>
		<%@ include file="logincheck.jsp"%>
	</div>
</nav>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>



		<div class="header-top">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12 text-center">
						<a href="main.food" class="site-logo"> <img src="resources/img/logo2.png" width="500px"	height="100px"  alt="Image" class="img-fluid">
						</a>
					</div>
					<a href="main.food"
						class="mx-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
						class="icon-menu h3"></span></a>
				</div>
			</div>




			<div
				class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block"
				role="banner">

				<div class="container">
					<div class="d-flex align-items-center">

						<div class="mx-auto">
							<nav class="site-navigation position-relative text-left"
								role="navigation">
								<ul
									class="site-menu main-menu js-clone-nav mx-auto d-none pl-0 d-lg-block border-none">
									<li><a href="main.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">&nbsp 홈 화면</a></li>
									<li><a href="boardlist.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">공지사항</a></li>
									<li><a href="list.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">상품정보</a></li>
									<li><a href="allmenu.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">식단정보</a></li>
									<li><a href="chart.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">베스트식품</a></li>
									<li><a href="mypage.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">섭취정보</a></li>
									<li><a href="qna.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">Q&A</a></li>
									<li><a href="allreceivemessage.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">쪽지함<c:set var="loop_flag" value="false"/>
									<c:forEach var="row" items="${mlist}">
										<c:if test="${not loop_flag }">
									      	<c:if test="${row.count == 0}" >
									      		<img src="resources/img/new.jpg" alt="Image" class="img-fluid">
									      		<c:set var="loop_flag" value="true"/>
									      	</c:if>
									      </c:if>
									    </c:forEach></a></li>
									<li><a href="map.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">지도</a></li>
								</ul>
								</ul>
							</nav>

						</div>

					</div>
				</div>

			</div>

		</div>
<c:if test="${not empty msg}">
			<script type="text/javascript">
				alert("${msg}");
			</script>
		</c:if>
    <div class="site-section  pb-0" >
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-7 section-title text-center mb-5">
            <h2 class="d-block" style="font-family: 'Sunflower', sans-serif;">섭취 정보<img width="80px" height="80px"
							src="resources/img/animat-grill-color.gif"></h2>
          </div>
        </div>
        <div class="row mb-5" style="font-family: 'Sunflower', sans-serif;">
          <form class="col-md-12" method="post">
            <div class="site-blocks-table">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">이미지</th>
                    <th class="product-name">이름</th>
                    <th class="product-quantity">수량</th>
                    <th class="product-total">알러지</th>
                    <th class="product-remove">제거</th>
                  </tr>
                </thead>
                <tbody>
                
                  <c:forEach var="row" items="${list}">
                  <tr>
                    <td class="product-thumbnail">
                    <a href="#"><img src="resources/${row.img }" alt="Image" class="img-fluid" style="font-family: 'Sunflower', sans-serif;"></a>
                    </td>
                    <td class="product-name">
                      <h2 class="h5 cart-product-title text-black" style="font-family: 'Sunflower', sans-serif;">${row.name }</h2>
                    </td>
                    <td>${row.count } </td>
                    <td><!--  <img src="resource/img/경고.PNG" alt="Image" class="img-fluid"> --></td>
                    <td><a href="deletemyfood.food?id=${row.id }&code=${row.code}" class="btn btn-primary height-auto btn-sm" style="font-family: 'Sunflower', sans-serif;">삭제</a></td>
                  </tr>
    			</c:forEach>
                </tbody>
              </table>
            </div>
          </form>
        </div>
    
      </div>
    </div>
    
    <center>
    <span style="font-family: 'Sunflower', sans-serif; margin: auto; font-size:30px;" >오늘 섭취한 칼로리는 총 
    <span style="font-family: 'Sunflower', sans-serif; margin: auto; font-size:30px; color:red"> ${sum } </span> 
    kcal입니다.</span><br><br>
    <!-- Button trigger modal -->
	<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal" style="font-family: 'Sunflower', sans-serif; margin: auto;">성분표 보기 </button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width:500px; height:400px;">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Sunflower', sans-serif;">오늘 섭취한 성분표</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="donutchart" style="width: 300px; height: 300px; position:absolute;"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<button class="btn btn-primary" style="font-family: 'Sunflower', sans-serif; margin: auto;"><a href="updateForm.food" style="color: white">회원 정보 수정</a></button>
     
    
<%@ include file="footer.jsp"%>
</body>
</html>