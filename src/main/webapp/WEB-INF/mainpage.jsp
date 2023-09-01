<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>BANKERS</title>
	<link rel="stylesheet" href="../css/body.css">
	<link rel="stylesheet" href="../css/footer.css">
	<link rel="stylesheet" href="../css/hearder.css">
	<link rel="stylesheet" href="../css/sidebar.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/mainpage.css">
</head>

<body>

	<div class="container">
		<div class="head">
			<h1>BANKERS | 영업팀</h1>
			<nav>
				<ul>
					<li><a>USER</a></li>
					<li><a href="/">로그아웃</a></li>
				</ul>
			</nav>
		</div>
		<div class="sidebar">
			<div class="btn-group">
				<button onclick="window.location.href='newcustumer.html'">신규
					고객</button>
				<button onclick="window.location.href='customermanagement.html'">기존
					고객 관리</button>
				<button onclick="window.location.href='employeemanagent.html'">영업
					사원 관리</button>
			</div>
		</div>
		<div class="body">
			<div class="center-container">
				<button class="button" onclick="window.location.href='newcustomer'">신규 고객</button>
				<form action="/retaincustomer" method="get" class="formsubmit">
					<button type="submit" class="button">기존 고객</button>
					<input type="text" name="companyName" placeholder="회사 이름" required>
				</form>
			</div>
		</div>
	</div>
	<div class="footer">
		<p>BANKERS. fisabankers@gmail.com tel.010-XXXX-XXXX</p>
		<p>서울특별시 마포구 월드컵북로 434 (상암동, 상암 IT Tower 6층)</p>
	</div>
	</div>
</body>

</html>