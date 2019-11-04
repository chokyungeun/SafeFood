<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
	border-radius: 15px;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #808080;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
	float: left;
	width: 50%;
}

.signupbtn2 {
	background-color: red;
}
/* Add padding to container elements */
.container {
	padding: 16px;
	width: 50%;
}

.container2 {
	padding: 16px;
	text-align: left;
	font-family: 'Sunflower', sans-serif;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}

.form-group {
	display: inline-block;
}
</style>
<body>
	<center>
		<div class="container">

			<form action="update.food" method="post" style="border: 1px solid #ccc">
				<div class="container2">
					<h1>
						마이 페이지<img width="50px" height="50px"
							src="resources/img/animat-customize-color.gif">
					</h1>
					<p>개인 정보를 수정 해주세요.</p>
					<hr>

					<label for="id"><b>사용자 ID</b></label> <input type="text"
						placeholder="${m.id }" name="id" required disabled="disabled" value="${m.id }">

					<label for="pass"><b>비밀 번호</b></label> <input type="password"
						placeholder="${m.pw }" name="pw" value="${m.pw }"> <label for="name"><b>이
							름</b></label> <input type="text" placeholder="${m.name }" name="name"
						required disabled="disabled" value="${m.name }"> <label for="phone"><b>전화
							번호</b></label> <input type="text" placeholder="${m.phone }" name="phone" value="${m.phone }">
					<label for="allergy" style="font-family: 'Sunflower', sans-serif;"><b>내
							알러지</b></label> <input type="text" placeholder="${m.allergy }" required
						disabled="disabled" value="${m.allergy }"> <label for="allergy"><b>알러지
							정보</b></label><br> <br> <span>
						<div class="form-group">
							<div class="col-sm-2 control-label">
								<label id="allergy"></label>
							</div>
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='bean' />대두
							</div>
							&nbsp;
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='shrimp' />새우
							</div>
							&nbsp;
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='cucomber' />오이
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-2 control-label">
								<label id="allergy"> </label>
							</div>
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='peach' />복숭아
							</div>
							&nbsp;
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='peanut' />땅콩
							</div>
							&nbsp;
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='salmon' />연어
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-2 control-label">
								<label id="allergy"> </label>
							</div>
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='milk' />우유
							</div>
							&nbsp;
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='beef' />소고기
							</div>
							&nbsp;
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='egg' />계란
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-2 control-label">
								<label id="allergy"> </label>
							</div>
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='crap' />게
							</div>
							&nbsp;
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='ssuk' />쑥
							</div>
							&nbsp;
							<div class="col-sm-2">
								<input type='checkbox' name='allergy' value='tuna' />참치
							</div>
						</div> <br> <br>
						<div class="clearfix">
							<button type="submit" class="signupbtn"
								style="font-family: 'Sunflower', sans-serif;">수정완료</button>
							<button type="button" class="cancelbtn"
								onclick="location.href='main.food' "
								style="font-family: 'Sunflower', sans-serif;">취 소</button>
						</div>
						<div>
							<button type="button" class="signupbtn2"
								onclick="location.href='delete.food' "
								style="font-family: 'Sunflower', sans-serif;">
								회원탈퇴</a>
							</button>
						</div>
				</div>
			</form>
		</div>
</body>
</html>