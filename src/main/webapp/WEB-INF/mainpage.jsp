<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>BANKERS</title>
	<link rel="icon" type="image/x-icon" href="../images/favicon/favicon.ico">
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
			<h1>
				<p>BANKERS | 영업팀</p>
			</h1>
			<nav>
				<ul>
					<li>
						<a>USER</a>
					</li>
					<li>
						<a href="user.html">로그아웃</a>

					</li>
				</ul>
			</nav>
		</div>
		<div class="sidebar">
			<div class="btn-group">
				<button onclick="window.location.href='newcustumer.html'">신규 고객</button>
				<button onclick="window.location.href='customermanagement.html'">기존 고객 관리</button>
				<button onclick="window.location.href='employeemanagent.html'">영업 사원 관리</button>
			</div>
		</div>
		<div class="body">
			<button onclick="window.location.href='newcustumer.html'">신규 고객</button>
			<button onclick="window.location.href='customermanagement.html'">기존 고객 관리</button>
			<input type="text" placeholder="고객 명">
		</div>
	</div>
	<div class="footer">
		<p>BANKERS. fisabankers@gmail.com tel.010-XXXX-XXXX</p>
		<p>서울특별시 마포구 월드컵북로 434 (상암동, 상암 IT Tower 6층)</p>
	</div>
	</div>
</body>

</html>