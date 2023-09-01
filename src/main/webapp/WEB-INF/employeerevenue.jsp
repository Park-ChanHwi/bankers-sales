<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Header </title>

	<link rel="stylesheet" href="../css/body.css">
	<link rel="stylesheet" href="../css/footer.css">
	<link rel="stylesheet" href="../css/hearder.css">
	<link rel="stylesheet" href="../css/sidebar.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/employeemanagent.css">
	<link rel="icon" type="image/x-icon" href="../images/favicon/favicon.ico">

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
				<button onclick="window.location.href='mainpage.html'">메인</button>
				<button onclick="window.location.href='newcustumer.html'">신규 고객</button>
				<button onclick="window.location.href='customermanagement.html'">기존 고객 관리</button>
			</div>
		</div>
		<div class="body">
			<h2>영업 사원 관리</h2>
			<div class="scroll-container">
				<table class="scrolltable">
					<thead>
						<td><input type="checkbox" class="check"></td>
						<th scope="col">번호</th>
						<th scope="col">이름</th>
						<th scope="col">전화번호</th>
						<th scope="col">ID</th>
						<th scope="col">PW</th>
						<th scope="col">실적</th>
						<th scope="col">상태</th>
						<th scope="col">버튼1</th>
						<th scope="col">버튼2</th>
						<th scope="col">버튼3</th>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" class="check"></td>

							<td>1</td>

							<td><input type="text" name="st_name"><br></td>

							<td>010-7552-1827</td>

							<td>user1</td>
							<td>1234</td>
							<td>230</td>
							<td>재직</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>

						<tr>

							<td><input type="checkbox" class="check"></td>

							<td></td>

							<td>
							</td>

							<td>//000-0000-0000//</td>
							<td>//tester//</td>
							<td>//0000//</td>
							<td>//실적 구현예정//</td>
							<td>재직</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>

						<tr>

							<td><input type="checkbox" class="check"></td>
							<td>3</td>

							<td>이동욱</td>

							<td>010-xxxx-xxxx</td>
							<td>user3</td>
							<td>1324</td>
							<td>123</td>
							<td>재직</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>

						<tr>

							<td><input type="checkbox" class="check"></td>
							<td>3</td>

							<td>이동욱</td>

							<td>010-xxxx-xxxx</td>
							<td>user3</td>
							<td>1324</td>
							<td>123</td>
							<td>재직</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>
						<tr>

							<td><input type="checkbox" class="check"></td>
							<td>3</td>

							<td>이동욱</td>

							<td>010-xxxx-xxxx</td>
							<td>user3</td>
							<td>1324</td>
							<td>123</td>
							<td>재직</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>
						<tr>

							<td><input type="checkbox" class="check"></td>
							<td>3</td>

							<td>이동욱</td>

							<td>010-xxxx-xxxx</td>
							<td>user3</td>
							<td>1324</td>
							<td>123</td>
							<td>재직</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>
						<tr>
						</tr>
							
					</tbody>

				</table>

			</div>

		</div>

		<div class="footer">

			<p>BANKERS. fisabankers@gmail.com tel.010-XXXX-XXXX</p>

			<p>서울특별시 마포구 월드컵북로 434 (상암동, 상암 IT Tower 6층)</p>

		</div>

	</div>

</body>





</html>