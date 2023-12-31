<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Header</title>
<link rel="icon" type="image/x-icon"
	href="../images/favicon/favicon.ico">
<link rel="stylesheet" href="../css/body.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/hearder.css">
<link rel="stylesheet" href="../css/sidebar.css">
<link rel="stylesheet" href="../css/style.css">

<link rel="stylesheet" href="../css/customermanagement.css">
</head>

<style>
</style>

<body>

	<div class="container">
		<div class="head">
			<h1>
				<p>BANKERS | 영업팀</p>
			</h1>
			<nav>
				<ul>
					<li><a>USER</a></li>
					<li><a href="/">로그아웃</a></li>
				</ul>
			</nav>
		</div>
		<div class="sidebar">
			<div class="btn-group">
				<button onclick="location.href='mainpage.html'">메인</button>
				<button onclick="window.location.href='newcustumer.html'">신규
					고객</button>
				<button onclick="window.location.href='employeemanagent.html'">영업
					사원 관리</button>
			</div>
		</div>
		<div class="body">
			<h2>기존 고객 관리</h2>

			<table class="create-container">
				<tr>
					<td><label>회사 법인명</label></td>
					<td><input type="text" name="companyname"
						value="${companyname}" required /></td>
				</tr>
				<tr>
					<td><label for="id">회사 이메일</label></td>
					<td><input id="id" type="text" name="companyEmail"
						value="${companyEmail}" required /></td>
				</tr>
				<tr>
					<td><label for="id">회사 주소</label></td>
					<td><input id="id" type="text" name="companyAddress"
						value="${companyAddress}" required /></td>
				</tr>
				<tr>
					<td><label for="password">회사 번호</label></td>
					<td><input id="password" type="text" name="companyNumber"
						value="${companyNumber}" required /></td>
				</tr>
				<tr>
					<td><label for="phone-number">대표 번호</label></td>
					<td><input id="phone-number" name="phoneNumber" type="tel"
						placeholder="010-xxxx-xxxx" value="${phoneNumber}" /></td>
				</tr>

				<tr>
					<td><label for="confirmed-password">회사 명</label></td>
					<td><input id="confirmed-password" type="text" name="company" value="${company}" /></td>
				</tr>
				<tr>
					<td><label for="email">회사 크래딧</label></td>
					<td><input id="email" name="credits" value="${custtotalcredit}" /></td>
				</tr>
			</table>
			<div class="scroll-container">
				<table class="scrolltable" id="custTable">
					<thead>
						<th scope="col">번호</th>
						<th scope="col">직책</th>
						<th scope="col">ID</th>
						<th scope="col">PW</th>
						<th scope="col">이메일</th>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="footer">
		<p>BANKERS. fisabankers@gmail.com tel.010-XXXX-XXXX</p>
		<p>서울특별시 마포구 월드컵북로 434 (상암동, 상암 IT Tower 6층)</p>
	</div>
	<script>
		var number = decode("${number}");
		var custnumber = decode("${custnumber}");
		var custpos = decode("${custpos}");
		var custid = decode("${custid}");
		var custpw = decode("${custpw}");
		var custemail = decode("${custemail}");
		
		for (var i = 0; i < custid.length; i++) {
			addRow(i + 1, custpos[i], custid[i], custpw[i], custemail[i]);
		}

		function addRow(custnumber, custpos, custid, custpw, custemail) {
		    var table = document.getElementById("custTable");
		    var newRow = document.createElement("tr");

		    addColumn(newRow, custnumber);
		    addColumn(newRow, custpos);
		    addColumn(newRow, custid);
		    addColumn(newRow, custpw);
		    addColumn(newRow, custemail);

		    table.getElementsByTagName('tbody')[0].appendChild(newRow);
		}

		function addColumn(row, str) {
			var cell = document.createElement("td");
			cell.textContent = str;
			row.appendChild(cell);
		}

		function decode(str) {
			var strtrim = str.replace(/ /g, '');
			var strslice = strtrim.slice(1, -1);
			var strsplit = strslice.split(',');
			return strsplit;
		}
	</script>
</body>

</html>