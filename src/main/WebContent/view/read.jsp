<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "com.ssafy.vo.Food"%>
<!DOCTYPE html>
<html lang="en">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">

<head>
  <title>원석_인경_SafeFood &mdash;</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  
  <link href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Montserrat:400,700|Roboto&display=swap" rel="stylesheet"> 

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
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <link rel="stylesheet" href="css/style.css">
	 <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['성분', '함량'],
          ['탄수화물', ${b.carbo}],
          ['단백질', ${b.protein}],
          ['지방',  ${b.fat}],
          ['당류', ${b.carbo}],
          ['포화지방산', ${b.fattyacid}]
        ]);

        var options = {
          title: '영양성분표',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#" style="font-family:'Sunflower', sans-serif;">Safefood</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
    </ul>
      <%@ include file="logincheck.jsp"%>
  </div>
</nav>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

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
            <a href="main.food" class="site-logo">
              <img src="img/메인.PNG" alt="Image" class="img-fluid">
            </a>
          </div>
          <a href="#" class="mx-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a>
        </div>
      </div>
      


      
      <div class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block" role="banner">

      <div class="container">
        <div class="d-flex align-items-center">
          
          <div class="mx-auto">
              <nav class="site-navigation position-relative text-left" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mx-auto d-none pl-0 d-lg-block border-none">
                <li><a href="main.food" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">&nbsp 홈 화면</a></li>
                <li><a href="#" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">공지사항</a></li>
                <li><a href="list.food" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">상품정보</a></li>
                <li><a href="chart.food" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">베스트식품</a></li>
                <li><a href="#" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">섭취정보</a></li>
              </ul>    
              </ul>                                                                                                                                                                                                                                                                                         
            </nav>

          </div>
         
        </div>
      </div>

    </div>
    
    </div>


    <div class="site-section mt-5" style="font-family:'Sunflower', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-lg-5">
              <img src="${b.img }" alt="Image" class="img-fluid">
              <br>
              <table  class="table" style="font-family:'Sunflower', sans-serif;">
              <tr>
			     <th>이름</th>
			     <th>${b.name }</th>
			  </tr>
			  <tr>
			     <th>제조사</th>
			     <th>${b.maker }</th>
			  </tr>
			  <tr>
			     <th>원재료</th>
			     <th>${b.material }</th>
			   </tr>
			  <tr>
			   	<th>알러지 성분</td>
			   	<th>${b.allergy }</td>
			  </tr>    
			   </table>
			   
			   
          </div>
          <div class="col-lg-6 ml-auto">
            <table class="table table-bordered" style="font-family:'Sunflower', sans-serif;">
			  <thead>
			   <tr>
			     <th>영양분</th>
			     <th>함량</th>
			   </tr>
			   </thead>
			   <tr>
			     <td>총 용량 </td>
			     <td>${b.supportpereat }</td>
			   </tr>
			   <tr>
			     <td>칼로리</td>
			     <td>${b.calory } </td>
			   </tr>
			   <tr>
			     <td>탄수화물</td>
			     <td>${b.carbo } </td>
			   </tr>      
			   <tr>
			     <td>단백질</td>
			     <td>${b.protein }</td>
			   </tr>      
			   <tr>
			     <td>지방</td>
			     <td>${b.fat }</td>
			   </tr>      
			   <tr>
			     <td>당류</td>
			     <td>${b.chole }</td>
			   </tr>      
			   <tr>
			     <td>나트륨</td>
			     <td>${b.natrium }</td>
			   </tr>      
			   <tr>
			     <td>포화 지방산</td>
			     <td>${b.fattyacid }</td>
			   </tr>      
			   <tr>
			     <td>트렌스지방</td>
			     <td>${b.transfat }</td>
			   </tr>  
 			</table> 
            
              <div class="mb-5">
              <div class="input-group mb-3" style="max-width: 200px;">
                <div class="input-group-prepend">
                  <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                </div>
                <input type="text" class="form-control text-center border mr-0" value="1" placeholder=""
                  aria-label="Example text with button addon" aria-describedby="button-addon1">
                <div class="input-group-append">
                  <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                </div>
              </div>
    
            </div>
            <p><a href="#" class="btn btn-outline-primary">추가하기</a>
 
<!-- Button trigger modal -->
<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">
  성분표 보기
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family:'Sunflower', sans-serif;">${b.name } 성분표</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <div id="donutchart" style="width: 900px; height: 300px;"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
 
 
 
 
            </p>
          </div>
        </div>
      </div>
    </div>

    
    <div class="footer">
      <div class="container">
        
        <div class="row">
          <div class="col-12">
            <div class="copyright">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>This site is made with </i> by <a href="#" target="_blank" >원석_인경</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>

            </div>
          </div>
        </div>
      </div>
    </div>
    

  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>


  <script src="js/main.js"></script>

</body>

</html>