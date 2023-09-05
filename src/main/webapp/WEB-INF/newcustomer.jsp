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
						<form id="registrationForm" action="registration" method="POST">
							<table class="create-container">
								<tr>
									<td><label>회사 법인명</label></td>
									<td><input type="text" name="companyName" required /></td>
								</tr>
								<tr>
									<td><label for="id">회사 이메일</label></td>
									<td><input id="id" type="text" name="companyEmail"
										required /></td>
								</tr>
								<tr>
									<td><label for="id">회사 주소</label></td>
									<td><input id="address" type="text" name="companyAddress"
										required /></td>
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

								<tr>
									<td><label for="confirmed-password">회사 명</label></td>
									<td><input id="confirmed-password" type="text"
										name="company" required /></td>
								</tr>
								<tr>
									<td><label for="email">회사 크래딧</label></td>
									<td><input id="email" name="credits" /></td>
								</tr>
							</table>
							<div class="card-body">
								<div class="table-responsive">
									<table id="vmTable" class="table table-bordered" width="100%"
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
										<tbody id="table-body">
											<tr>
												<td>1</td>
												<td><input type="text" class="position-input"
													name="tableJob"></td>
												<td><input type="text" class="id-input" name="tableID"></td>
												<td><input type="password" class="password-input"
													name="tablePW"></td>
												<td><input type="text" class="email-input"
													name="tableEmail"></td>
											</tr>
										</tbody>
									</table>

								</div>
								<div class="table-button">
									<input type="button" value="추가" id="addRowButton">
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
		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">"로그아웃" 버튼을 선택하시면 현재 세션이 종료됩니다.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">취소</button>
						<a class="btn btn-primary" href="/">로그아웃</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin-2.js"></script>

	</div>

	</div>

</body>

</html>