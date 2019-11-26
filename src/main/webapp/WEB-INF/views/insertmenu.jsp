<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">

<head>
<title>내 알러지를 부탁해 —</title>
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

<link rel="stylesheet" href="css/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" >
	$(document).ready(function(){
		$("#fileInput").on('change', function(){  // 값이 변경되면
			var foodname = $("#food").val();
			if(window.FileReader){  // modern browser
				var filename = $(this)[0].files[0].name;
			} else {  // old IE
				var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
			}
			var fn = filename.split('.')[1];
			// 추출한 파일명 삽입
			$("#img").val('img/'+foodname+"."+fn);
		});
	});
      
    </script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.collapse {
	padding-right: 100px;
}

#menu ul li {
	vertical-align: middle;
	text-align: center;
}

.contents img {
	width: 350px;
	height: 350px;
}

.drpt {
	overflow: scroll;
	height: 150px;
}
</style>



</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="main.food" style="font-family: 'Sunflower', sans-serif;">내 알러지를 부탁해</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02"
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
						<a href="main.food" class="site-logo"> <img
							src="resources/img/logo2.png" alt="Image" class="img-fluid"
							width="500px" height="100px" alt="Image" class="img-fluid">
						</a>
					</div>
					<a href="main.food" class="mx-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black">
						<span class="icon-menu h3"></span>
					</a>
				</div>
			</div>


			<div class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block" role="banner">

				<div class="container">
					<div class="d-flex align-items-center">

						<div class="mx-auto">
							<nav class="site-navigation position-relative text-left" role="navigation">
								<ul class="site-menu main-menu js-clone-nav mx-auto d-none pl-0 d-lg-block border-none">
									<li><a href="main.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">&nbsp; 홈 화면</a></li>
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
							</nav>

						</div>
					</div>
				</div>

			</div>

		</div>
<hr><br><br><br>

<body style="font-family: 'Sunflower', sans-serif;">
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h2 class="text-center" style="font-family: 'Sunflower', sans-serif;">식단추가</h2><p>&nbsp;</p>
        <form action="insertmenu.food" method="post" enctype="multipart/form-data">
            <div class="table table-responsive">
                      <table class="table table-striped">
                      
             <tr>
                <td>식단명</td>
                <td><input type=input id='food' name='food' size=42 placeholder="식단명 입력"></td>
               
            </tr>
            <tr>
                <td>칼로리</td>
                <td><input type=input name='calory' size=42 placeholder="칼로리 입력"><b>kcal</b></td>
               
            </tr>
            
            <tr>
                <td>알레르기 유발 재료</td>
                <td colspan="3"><input type=input name='allergy' size=42 ><b>ex)달걀, 키위 등등</b></td>
            </tr>

            <tr>
                <td><label for="InputSubject1">이미지</label></td>
                <td colspan="3">
                <input id="fileInput" filestyle="" type="file" data-class-button="btn btn-default" 
                data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="form-control" 
                tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
				<div class="bootstrap-filestyle input-group">
					<input type="text" id="img" class="form-control" name="img" disabled="">
					<span class="group-span-filestyle input-group-btn" tabindex="0">
						<label for="fileInput" class="btn btn-default ">
							<img src="resources/img/upload.png" alt="Image" class="img-fluid" style="width:30px; height:30px;">
						</label>
					</span>
				</div>

            </tr>
             <br><br>
            <tr>  
                <td colspan="4"  class="text-center">
                    <input type="submit" value="식단추가" class="btn btn-warning">
                    <input type="button"  class="btn btn-primary" onclick="location.href='allmenu.food'" value="식단 목록">
                </td>
            </tr>
          </table>
         
     
            </div>
        </form>   
    </div>
</div>
 

<script>
CKEDITOR.replace('content', {
         
    width:'100%',
    height:'350'
         
});
 
</script>
<%@ include file="footer.jsp"%>
</body>
</html>