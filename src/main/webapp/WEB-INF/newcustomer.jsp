<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
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
<link rel="stylesheet" href="../css/newcustumer.css">
</head>
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
				<button onclick="window.location.href='customermanagement.html'">기존
					고객 관리</button>
				<button onclick="window.location.href='employeemanagent.html'">영업
					사원 관리</button>
			</div>
		</div>
		<div class="body">
			<h2>신규 등록</h2>
			<form id="registrationForm" action="registration" method="POST">
				<table class="create-container">
					<tr>
						<td><label>회사 법인명</label></td>
						<td><input type="text" name="companyName" required /></td>
					</tr>
					<tr>
						<td><label for="id">회사 이메일</label></td>
						<td><input id="id" type="text" name="companyEmail" required /></td>
					</tr>
					<tr>
						<td><label for="id">회사 주소</label></td>
						<td><input id="id" type="text" name="companyAddress" required /></td>
					</tr>
					<tr>
						<td><label for="password">회사 번호</label></td>
						<td><input id="password" type="text" name="companyNumber"
							required /></td>
					</tr>
					<tr>
						<td><label for="phone-number">대표 번호</label></td>
						<td><input id="phone-number" name="phoneNumber" type="tel"
							placeholder="010-xxxx-xxxx" /></td>
					</tr>
					<!-- pattern="[0-9]{3}-[0-9]{3}-[0-9]{4} -->
					<tr>
						<td><label for="confirmed-password">회사 명</label></td>
						<td><input id="confirmed-password" type="text" name="company"
							required /></td>
					</tr>
					<tr>
						<td><label for="email">회사 크래딧</label></td>
						<td><input id="email" name="credits" /></td>
					</tr>
				</table>
				<h3>사원 관리</h3>
				<div class="scroll-container">
					<table class="scrolltable" id="data-table">
						<thead>
							<th scope="col">번호</th>
							<th scope="col">직책</th>
							<th scope="col">ID</th>
							<th scope="col">PW</th>
							<th scope="col">이메일</th>
						</thead>
						<tbody id="table-body">
							<tr>
								<td>1</td>
								<td><input type="text" class="position-input"name="tableJob"></td>
								<td><input type="text" class="id-input" name="tableID"></td>
								<td><input type="password" class="password-input"name="tablePW"></td>
								<td><input type="text" class="email-input"name="tableEmail"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="table-button">
					<input type="button" value="추가" id="addRowButton"> <input
						type="button" value="삭제">
				</div>
				<script>
                    const addRowButton = document.getElementById('addRowButton');
                    const tableBody = document.getElementById('table-body'); // tbody 엘리먼트

                    let rowCount = 1;

                    addRowButton.addEventListener('click', () => {
                        const newRow = document.createElement('tr');
                        newRow.innerHTML = `
                            <td>${rowCount}</td>
                            <td><input type="text" class="position-input" name="tableJob"></td>
                            <td><input type="text" class="id-input" name="tableID"></td>
                            <td><input type="password" class="password-input" name="tablePW"></td>
                            <td><input type="text" class="email-input" name="tableEmail"></td>
                        `;
                        tableBody.appendChild(newRow);
                        rowCount++;

                        // 업데이트된 rowCount를 표시
                        const rowCountCell = newRow.querySelector('td:first-child');
                        rowCountCell.textContent = rowCount;
                    });
                </script>
				<input type="submit" class="create-button" value="신규 등록">
			</form>
		</div>
	</div>
	<div class="footer">
		<p>BANKERS. fisabankers@gmail.com tel.010-XXXX-XXXX</p>
		<p>서울특별시 마포구 월드컵북로 434 (상암동, 상암 IT Tower 6층)</p>
	</div>
</body>
</html>