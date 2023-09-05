<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html lang="en">


<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Bankers</title>

</head>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

a, a:link, a:visited {
	color: black;
	text-decoration: none;
}

li {
	list-style: none;
}

section .left h2 {
	font-size: 3rem;
	margin-bottom: 5%;
}

section .left p {
	font-size: 1.25rem;
	margin-top: 3%;
}

section .index-self .left {
	float: left;
	width: 35%;
	margin-top: 15%;
	margin-left: 10%;
}

section .right h2 {
	font-size: 1.25rem;
	color: #6A24FE;
	margin-bottom: 3%;
}

section .index-self .right {
	width: 40%;
	float: right;
	padding: 0 3rem;
	margin-top: 17%;
	margin-right: 10%;
}

section .index-self .right ::placeholder {
	color: #d2d2d2;
}

section .index-self .right input {
	width: 70%;
	height: 48px;
	padding: 0 10px;
	margin-bottom: 3%;
	border-radius: 6px;
	background-color: #f8f8f8;
	outline: none;
	border-radius: 10px;
	border: 1px solid #ccc;
}

section .index-self .right input[type="submit"] {
	color: #fff;
	font-size: 16px;
	background-color: #6a24fe;
	margin-top: 6%;
	border-radius: 10px;
}
</style>


<style>
.vl {
	border-left: 2px solid black;
	height: 60%;
	position: absolute;
	left: 50%;
	top: 20%;
}
</style>



<div class="vl"></div>

<div class="vi"></div>

<section id="index">

	<div class="container">

		<div class="index-self">

			<div class="left">

				<h2>BANKERS</h2>

				<p>국내 소규모 스타트업을 위한 기업대상 클라우드 서비스 BANKERS입니다.</p>

				<p>BANKERS는 서버 고가용성과 오토스케일링, 알람 메일을 지원합니다.</p>

				<p>고성능 VM과 넉넉한 RAM, 충분한 저장용량까지 저렴한 가격에 이용해보세요.</p>

			</div>

			<div class="right">

				<form action="/login" method="post">

					<h2>Login</h2>

					<input type="text" id="id" placeholder="ID" name="loginID"> 
					<input type="password" id="password" placeholder="PW" name="loginPW">
					<input type="submit" value="Login">
				
				</form>

			</div>

		</div>

	</div>

</section>

</body>



</html>