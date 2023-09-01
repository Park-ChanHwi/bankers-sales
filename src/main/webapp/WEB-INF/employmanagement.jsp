<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Header</title>

	<link rel="stylesheet" href="../css/body.css">
	<link rel="stylesheet" href="../css/footer.css">
	<link rel="stylesheet" href="../css/hearder.css">
	<link rel="stylesheet" href="../css/sidebar.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/employeemanagent.css">
	<link rel="icon" type="image/x-icon" href="../images/favicon/favicon.ico">
	<script>
    function addRow() {
        // ...
        // (이전 코드)
        
        // 서버로 데이터 전송하여 DB에 저장
        saveDataToDB(newNum, newName, newPhoneNumber, newID, newPW, newStatus);
    }
    
    function saveDataToDB(num, name, phoneNumber, id, pw, status) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                console.log(this.responseText); // 서버 응답 확인
            }
        };
        
        var url = "http://localhost:8080/bankersemp"; // 실제 서버의 처리 URL로 변경해야 함
        var params = "num=" + num + "&name=" + name + "&phoneNumber=" + phoneNumber + "&id=" + id + "&pw=" + pw + "&status=" + status;
        xhttp.open("POST", url, true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send(params);
    }
	</script>
</head>

<body>

	<div class="container">

		<div class="head">

			<h1>
				BANKERS | 영업팀
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
			
<!-- 수동으로 하나하나 데이터 기입 -->
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
							
							<td>${Set1Num}</td>

							<td>${Set1Name}</td>

							<td>${Set1PhoneNumber}</td>

							<td>${Set1ID}</td>
							<td>${Set1PW}</td>
							<td>실적(notyet)</td>
							<td>
							<%
							    String status1 = (String)request.getAttribute("Set1Status");
							
							    String status1Text = "";
							    if ("admin".equals(status1) || "emp".equals(status1)) {
							        status1Text = "재직";
							    } else {
							        status1Text = "휴직";
							    }
							%>
						    <%= status1Text %>
							</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>
						
						<tr>
							<td><input type="checkbox" class="check"></td>
							
							<td>${Set2Num}</td>

							<td>${Set2Name}</td>

							<td>${Set2PhoneNumber}</td>

							<td>${Set2ID}</td>
							<td>${Set2PW}</td>
							<td>실적(notyet)</td>
							<td>
							<%
							    String status2 = (String)request.getAttribute("Set2Status");
							
							    String status2Text = "";
							    if ("admin".equals(status2) || "emp".equals(status2)) {
							        status2Text = "재직";
							    } else {
							        status2Text = "휴직";
							    }
							%>
						    <%= status2Text %>
							</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>
						
						<tr>
							<td><input type="checkbox" class="check"></td>
							
							<td>${Set3Num}</td>

							<td>${Set3Name}</td>

							<td>${Set3PhoneNumber}</td>

							<td>${Set3ID}</td>
							<td>${Set3PW}</td>
							<td>실적(notyet)</td>
							<td>
							<%
							    String status3 = (String)request.getAttribute("Set3Status");
							
							    String status3Text = "";
							    if ("admin".equals(status3) || "emp".equals(status3)) {
							        status3Text = "재직";
							    } else {
							        status3Text = "휴직";
							    }
							%>
						    <%= status3Text %>
							</td>
							<td><button>수정</button></td>
							<td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
							<td><button>비활성화</button></td>
						</tr>
					
					</tbody>

				</table>
<!-- 자동으로 db 끌어옴. 그러나 203번라인에서 세트 개수(영업사원 수)를 직접 변경해줘야 함. -->
<!-- 또한 4번 사원(tiger1212)의 이름과 전화번호가 서로 바뀌어서 출력되는 문제가 있음. 이부분 변경해야 함. -->
<!-- 데이터를 동적으로 연동시키는 작업 해야함. -->
				<table id = "employTable">
				    <thead>
				        <tr>
				            <th>번호</th>
				            <th>이름</th>
				            <th>전화번호</th>
				            <th>ID</th>
				            <th>PW</th>
				            <th>상태</th>
				            <th>버튼1</th>
				            <th>버튼2</th>
				            <th>버튼3</th>
				        </tr>
				    </thead>
				    <tbody>
				        <%
				            int n =4 ; // n
				            for (int i = 1; i <= n; i++) {
				                String numKey = "Set" + i + "Num";
				                String nameKey = "Set" + i + "Name";
				                String phoneNumberKey = "Set" + i + "PhoneNumber";
				                String idKey = "Set" + i + "ID";
				                String pwKey = "Set" + i + "PW";
				                String statusKey = "Set" + i + "Status";
				                
				                String num = (String) request.getAttribute(numKey);
				                String name = (String) request.getAttribute(nameKey);
				                String phoneNumber = (String) request.getAttribute(phoneNumberKey);
				                String id = (String) request.getAttribute(idKey);
				                String pw = (String) request.getAttribute(pwKey);
				                String status = (String) request.getAttribute(statusKey);
				        %>
				        <tr>
				            <td><%= num %></td>
				            <td><%= name %></td>
				            <td><%= phoneNumber %></td>
				            <td><%= id %></td>
				            <td><%= pw %></td>
				            <td><%= status %></td>
				            <td><button>수정</button></td>
				            <td><button onclick="window.location.href='employeerevenue.html'">실적</button></td>
				            <td><button>비활성화</button></td>
				        </tr>
				        <!-- 수정 실적 비활성화 부분 아직 구현 못함. -->
				        <%
				            }
				        %>
				        
				    </tbody>
				       <tbody>
        <!-- ... 이전 행 내용 유지 -->
        <tr>
            <td><input type="text" id="newNum"></td>
            <td><input type="text" id="newName"></td>
            <td><input type="text" id="newPhoneNumber"></td>
            <td><input type="text" id="newID"></td>
            <td><input type="text" id="newPW"></td>
            <td><input type="text" id="newStatus"></td>
            <td><button onclick="addRow()">수정</button></td>
            <td><button onclick="addRow()">실적</button></td>
            <td><button onclick="addRow()">비활성화</button></td>
            <tr>
            <td><button onclick="addRow()">저장</button></td>
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