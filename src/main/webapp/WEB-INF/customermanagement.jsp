<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>BANKERS</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="css/newcustumer.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/dashboard">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Bankers</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="/dashboard"> <i class="fas fa-fw fa-tablet-alt"></i> <span>메인</span></a>
			</li>

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="/newcustomer"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>신규 고객</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Page Heading -->
					<h1 class="h3 mb-0 text-gray-800">신규고객</h1>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">
						<div class="topbar-divider d-none d-sm-block"></div>
						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">${id}김건영</span>
								<img class="img-profile rounded-circle"
								src="img/undraw_profile.svg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									로그아웃
								</a>
							</div></li>
					</ul>
				</nav>
				<!-- End of Topbar -->

				<div class="container-fluid">
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">신규 고객 추가</h6>
						</div>
						<form>
							<table class="create-container">
								<tr>
									<td><label>회사 법인명</label></td>
									<td><input type="text" name="companyname"
										value="${companyname}" readonly /></td>
								</tr>
								<tr>
									<td><label for="id">회사 이메일</label></td>
									<td><input id="id" type="text" name="companyEmail"
										value="${companyEmail}" readonly /></td>
								</tr>
								<tr>
									<td><label for="id">회사 주소</label></td>
									<td><input id="id" type="text" name="companyAddress"
										value="${companyAddress}" readonly /></td>
								</tr>
								<tr>
									<td><label for="password">회사 번호</label></td>
									<td><input id="password" type="text" name="companyNumber"
										value="${companyNumber}" readonly /></td>
								</tr>
								<tr>
									<td><label for="phone-number">대표 번호</label></td>
									<td><input id="phone-number" name="phoneNumber" type="tel"
										placeholder="010-xxxx-xxxx" value="${phoneNumber} " readonly/></td>
								</tr>

								<tr>
									<td><label for="confirmed-password">회사 명</label></td>
									<td><input id="confirmed-password" type="text"
										name="company" value="${company}" readonly/></td>
								</tr>
								<tr>
									<td><label for="email">회사 크래딧</label></td>
									<td><input id="email" name="credits"
										value="${custtotalcredit}" readonly/></td>
								</tr>
							</table>
							<div class="card-body">
								<div class="table-responsive">
									<table id="custTable" class="table table-bordered" width="100%"
										cellspacing="0">
										<thead>
											<tr>
												<th>번호</th>
												<th>직책</th>
												<th>ID</th>
												<th>PW</th>
												<th>이메일</th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>

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
								
						</form>

					</div>
				</div>
			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->

		<!-- Footer -->
		<footer class="sticky-footer bg-footer">
			<div class="container my-auto">
				<div class="copyright text-center my-auto">
					<span>BANKERS. bankersfisa@gmail.com tel.010-XXXX-XXXX</span><br>
					<span>서울특별시 마포구 월드컵북로 434 (상암동, 상암 IT Tower 6층)</span><br>
				</div>
			</div>
		</footer>

	</div>

	</div>

</body>

</html>