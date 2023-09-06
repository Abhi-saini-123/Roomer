<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Roomer</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
<!-- Vendor CSS Files -->
<link href="assets/functionality/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/functionality/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/functionality/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="assets/functionality/swiper/swiper-bundle.min.css" rel="stylesheet">
<!-- sweet alert popup -->
<link rel="stylesheet" href="alert/dist/sweetalert.css" />
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<style>
.mb-3 {
	margin: 1rem 27rem;
}
</style>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
	<!-- ======= Header/Navbar ======= -->
<nav	class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
<div class="container">
<!-- <button class="navbar-toggler collapsed" type="button"	data-bs-toggle="collapse" data-bs-target="#navbarDefault"	aria-controls="navbarDefault" aria-expanded="false"
aria-label="Toggle navigation">
<span></span> <span></span> <span></span>
</button> -->
<a class="navbar-brand text-brand" href="index.jsp"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.2" stroke="currentColor" class="w-6 h-6 color-b"
width="60px" height="60px">
<path stroke-linecap="round" stroke-linejoin="round"	d="M8.25 21v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21m0 0h4.5V3.545M12.75 21h7.5V10.75M2.25 21h1.5m18 0h-18M2.25 9l4.5-1.636M18.75 3l-1.5.545m0 6.205l3 1m1.5.5l-1.5-.5M6.75 7.364V3h-3v18m3-13.636l10.5-3.819" />
</svg>Roomer</a>
</div>
</nav>
	<!-- End Header/Navbar -->

<section>
<div class="container">
<div class="row">
<div class="col-sm-12 section-t8">
<div class="row">
<div class="col-md-7">
<div class="col-md-6 mb-3 text-center">
<h1 style="margin-left: -1rem;">Login Account</h1>
</div>
<form method="post" action="login" id="login-form">
<div class="row">
<div class="col-md-6 mb-3">
<div class="form-group">
<input type="email" name="email" class="form-control form-control-lg form-control-a"	placeholder="User Email" required="required">
</div></div>
<div class="col-md-6 mb-3">
<div class="form-group">
<input type="password" name="password" class="form-control form-control-lg form-control-a"	placeholder="Password" required="required"></div>
</div>
<div class="col-md-6 mb-3 text-center" id="btn1">
<input type="submit" name="signin" id="signin" value="Log In" class="btn btn-a" />
</div>
<div class="col-md-6 mb-3 text-center">Don't have an account?<a href="usersignup.jsp"> Sign up.</a>
</div>
</div></form>
</div></div></div></div></div>
</section>
	<!-- End Contact Single-->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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
			swal("Congrats", "Account Created Successfully", "success");
		}
		if (status == "failed") {
			swal("Sorry", "Wrong User Email or Password", "error");
		} else if (status == "invalidEmail") {
			swal("Sorry", "Please enter Email ", "error");
		} else if (status == "invalidPassword") {
			swal("Sorry", "Please enter Password", "error");
		}
	</script>
</body>
</html>