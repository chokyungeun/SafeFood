<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "com.ssafy.vo.Food"%>
<!DOCTYPE html>
<html lang="en">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">

<head>
  <title>����_�ΰ�_SafeFood &mdash;</title>
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
          ['����', '�Է�'],
          ['ź��ȭ��', ${b.carbo}],
          ['�ܹ���', ${b.protein}],
          ['����',  ${b.fat}],
          ['���', ${b.carbo}],
          ['��ȭ�����', ${b.fattyacid}]
        ]);

        var options = {
          title: '���缺��ǥ',
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
              <img src="img/����.PNG" alt="Image" class="img-fluid">
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
                <li><a href="main.food" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">&nbsp Ȩ ȭ��</a></li>
                <li><a href="#" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">��������</a></li>
                <li><a href="list.food" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">��ǰ����</a></li>
                <li><a href="chart.food" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">����Ʈ��ǰ</a></li>
                <li><a href="#" class="btn btn-outline-success" style="font-family:'Sunflower', sans-serif;">��������</a></li>
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
			     <th>�̸�</th>
			     <th>${b.name }</th>
			  </tr>
			  <tr>
			     <th>������</th>
			     <th>${b.maker }</th>
			  </tr>
			  <tr>
			     <th>�����</th>
			     <th>${b.material }</th>
			   </tr>
			  <tr>
			   	<th>�˷��� ����</td>
			   	<th>${b.allergy }</td>
			  </tr>    
			   </table>
			   
			   
          </div>
          <div class="col-lg-6 ml-auto">
            <table class="table table-bordered" style="font-family:'Sunflower', sans-serif;">
			  <thead>
			   <tr>
			     <th>�����</th>
			     <th>�Է�</th>
			   </tr>
			   </thead>
			   <tr>
			     <td>�� �뷮 </td>
			     <td>${b.supportpereat }</td>
			   </tr>
			   <tr>
			     <td>Į�θ�</td>
			     <td>${b.calory } </td>
			   </tr>
			   <tr>
			     <td>ź��ȭ��</td>
			     <td>${b.carbo } </td>
			   </tr>      
			   <tr>
			     <td>�ܹ���</td>
			     <td>${b.protein }</td>
			   </tr>      
			   <tr>
			     <td>����</td>
			     <td>${b.fat }</td>
			   </tr>      
			   <tr>
			     <td>���</td>
			     <td>${b.chole }</td>
			   </tr>      
			   <tr>
			     <td>��Ʈ��</td>
			     <td>${b.natrium }</td>
			   </tr>      
			   <tr>
			     <td>��ȭ �����</td>
			     <td>${b.fattyacid }</td>
			   </tr>      
			   <tr>
			     <td>Ʈ��������</td>
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
            <p><a href="#" class="btn btn-outline-primary">�߰��ϱ�</a>
 
<!-- Button trigger modal -->
<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">
  ����ǥ ����
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family:'Sunflower', sans-serif;">${b.name } ����ǥ</h5>
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
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>This site is made with </i> by <a href="#" target="_blank" >����_�ΰ�</a>
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