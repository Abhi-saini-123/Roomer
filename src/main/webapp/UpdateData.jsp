<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//http 1.1
response.setHeader("Pragma", "no-cache");//http 1.0
response.setHeader("Expires", "0");//proxies
if (session.getAttribute("name") == null) {
	response.sendRedirect("loginform.jsp");
}
%>

<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Contact</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<!-- CSS Files -->
<link href="assets/functionality/animate.css/animate.min.css"
	rel="stylesheet">
<link href="assets/functionality/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/functionality/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/functionality/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<!-- for sweetalert popup  -->
<link rel="stylesheet" href="alert/dist/sweetalert.css" />
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<!-- ======= Property Search Section ======= -->
	<div class="click-closed"></div>
	<!--/ Form Search Star /-->
	<div class="box-collapse">
		<div class="title-box-d">
			<h3 class="title-d">Search Property</h3>
		</div>
		<span class="close-box-collapse right-boxed bi bi-x"></span>
		<div class="box-collapse-wrap form">
			<form class="form-a" method="post" action="Search_button"
				id="search-form">
				<div class="row">
					<div class="col-md-6 mb-2">
						<div class="form-group mt-3">
							<label class="pb-2" for="address2">Area</label> <input
								type="text" name="address2"
								class="form-control form-input form-control-a"
								required="required" />
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group mt-3">
							<label class="pb-2" for="rent1">Min Price</label> <input
								type="number" name="rent1"
								class="form-control form-input form-control-a" id="rent/seat"
								required="required" />
						</div>
					</div>
					<div class="col-md-12">
						<button type="submit" class="btn btn-b">Search Property</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- End Property Search Section -->
	>

	<!-- ======= Header/Navbar ======= -->
	<nav
		class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
		<div class="container">
			<button class="navbar-toggler collapsed" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarDefault"
				aria-controls="navbarDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span></span> <span></span> <span></span>
			</button>
			<a class="navbar-brand text-brand" href="index.jsp"><svg
					xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
					stroke-width="1.2" stroke="currentColor" class="w-6 h-6 color-b"
					width="60px" height="60px">
          <path stroke-linecap="round" stroke-linejoin="round"
						d="M8.25 21v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21m0 0h4.5V3.545M12.75 21h7.5V10.75M2.25 21h1.5m18 0h-18M2.25 9l4.5-1.636M18.75 3l-1.5.545m0 6.205l3 1m1.5.5l-1.5-.5M6.75 7.364V3h-3v18m3-13.636l10.5-3.819" />
        </svg>Roomer</a>
			<div class="navbar-collapse collapse justify-content-center"
				id="navbarDefault">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link " href="index.jsp">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link "
						href="property-grid.jsp">Properties</a></li>
					<li class="nav-item"><a class="nav-link " href="Ownerform.jsp">Add
							Property</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="UpdateData.jsp">Update Property</a></li>
					<li class="nav-item"><a class="nav-link bg-info "
						href="logout"><%=session.getAttribute("name")%></a></li>
				</ul>
			</div>

			<button type="button"
				class="btn btn-b-n navbar-toggle-box navbar-toggle-box-collapse"
				data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01">
				<i class="bi bi-search"></i>
			</button>
		</div>
	</nav>
	<!-- End Header/Navbar -->

	<main id="main">
		<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-12 section-t8">
						<div class="col-md-6 mb-3 " id="head2">
							<h1>Update Data</h1>
						</div>
						<div class="row">
							<div class="col-md-7">

								<form method="post" action="Update_data" id="Update-form">
									<input type="hidden" id="status2"
										value="<%=request.getAttribute("status2")%>">
									<div class="row">
										<div class="col-md-12 mb-3">
											<div class="form-group">
												<h5>Owner Property Number</h5>
												<input type="number" name="ownerid"
													class="form-control form-control-lg form-control-a"
													placeholder="Enter Owner Number" required="required">
											</div>
										</div>
										<div class="col-md-12 mb-3">
											<div class="form-group">
												<h5>Seats</h5>
												<input type="number" name="seat"
													class="form-control form-control-lg form-control-a"
													id="seats" placeholder="Enter number of Seats">
											</div>
										</div>
										<div class="col-md-12 mb-3">
											<div class="form-group">
												<h5>Rent per seat</h5>
												<input type="number" name="rent1"
													class="form-control form-control-lg form-control-a"
													id="rent/seat" placeholder="Enter Amount">
											</div>
										</div>

										<div class="col-md-12 mb-3">
											<div class="form-group">
												<h5>Rooms</h5>
												<input type="number" name="room"
													class="form-control form-control-lg form-control-a"
													id="room" placeholder="Enter number of Rooms">
											</div>
										</div>
										<div class="col-md-12 mb-3">
											<div class="form-group">
												<h5>Rent per room</h5>
												<input type="number" name="rent2"
													class="form-control form-control-lg form-control-a"
													id="rent/room" placeholder="Enter Amount">
											</div>
										</div>
										<div class="col-md-12 mb-3">
											<div class="form-group">
												<h5>Description</h5>
												<textarea name="description" class="form-control" cols="45"
													rows="8" placeholder="Enter detail of the property"></textarea>
											</div>
										</div>
										<div class="col-md-6 mb-3 text-center">
											<button type="submit" class="btn btn-a">Update</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Contact Single-->
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="copyright-footer">
						<p class="copyright color-text-a">
							&copy; Copyright <span class="color-a">Roomer</span> All Rights
							Reserved.
						</p>
					</div>
					<div class="credits"></div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End  Footer -->
	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/functionality/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/functionality/swiper/swiper-bundle.min.js"></script>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<!-- pop up alert  -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats", "Message sent Sussessfully", "success");
		}
		if (status == "invalidName") {
			swal("Sorry", "Please Enter Name", "error");
		}
		if (status == "invalidEmail") {
			swal("Sorry", "Please Enter Email", "error");
		}
		if (status == "invalidSubject") {
			swal("Sorry", "Please Enter Subject", "error");
		}
		if (status == "invalidMessage") {
			swal("Sorry", "Please Enter Message", "error");
		}
		if (status == "ERROR") {
			swal("sorry", "Data Already Exists", "error");
		}
	</script>
</body>
</html>