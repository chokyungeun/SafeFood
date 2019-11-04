<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

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
border-radius:15px;
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
opacity:1;
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
.signupbtn2{
	background-color: red;
}
/* Add padding to container elements */
.container {
  padding: 16px;
  width:50%;
}
.container2 {
  padding: 16px;
  text-align: left;
  font-family:'Sunflower', sans-serif;
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
.form-group{
	display:inline-block;
}
</style>
<body>
<center>
<div class = "container">

<form action="update.food?id=${m.id }" style="border:1px solid #ccc">
<div class="container2">
<h1>���� ������<img width="50px" height="50px" src="img/animat-customize-color.gif"></h1>
<p>���� ������ ���� ���ּ���.</p>
<hr>

<label for="id"><b>����� ID</b></label>
<input type="text" placeholder="${m.id }" name="id" required disabled="disabled">

<label for="pass"><b>��� ��ȣ</b></label>
<input type="password" placeholder="${m.pw }" name="pass">

<label for="name"><b>�� ��</b></label>
<input type="text" placeholder="${m.name }" name="name" required disabled="disabled">

<label for="phone"><b>��ȭ ��ȣ</b></label>
<input type="text" placeholder="${m.phone }" name="phone">
<label for="allergy" style="font-family:'Sunflower', sans-serif;"><b>�� �˷���</b></label>
<input type="text" placeholder="${m.allergy }"  required disabled="disabled">

<label for="allergy"><b>�˷��� ����</b></label><br><br>
<span>
				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label id="allergy"></label>
					</div>
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='bean' />���
					</div>&nbsp;
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='shrimp' />����
					</div>&nbsp;
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='cucomber' />����
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label id="allergy"> </label>
					</div>
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='peach' />������
					</div>&nbsp;
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='peanut' />����
					</div>&nbsp;
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='salmon' />����
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label id="allergy"> </label>
					</div>
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='milk' />����
					</div>&nbsp;
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='beef' />�Ұ��
					</div>&nbsp;
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='egg' />���
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label id="allergy"> </label>
					</div>
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='crap' />��
					</div>&nbsp;
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='ssuk' />��
					</div>&nbsp;
					<div class="col-sm-2">
						<input type='checkbox' name='allergy' value='tuna' />��ġ
					</div>
				</div>
				<br><br>
<div class="clearfix">
<button type="submit" class="signupbtn" style="font-family:'Sunflower', sans-serif;" >�����Ϸ�</button>
<button type="button" class="cancelbtn" onclick="location.href='main.food' " style="font-family:'Sunflower', sans-serif;">�� ��</button>
</div>
<div>
   	 <button type="button" class="signupbtn2" onclick = "location.href='delete.food' " style="font-family:'Sunflower', sans-serif;">ȸ��Ż��</a></button>
    </div>
</div>
</form>
</div>
</body>
</html>