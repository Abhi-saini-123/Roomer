<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Roomer</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<!-- Vendor CSS Files -->
<link href="assets/functionality/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/functionality/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/functionality/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="assets/functionality/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<!-- for sweetalert popup  -->
<link rel="stylesheet" href="alert/dist/sweetalert.css" />
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<style>
.section-t8 {
	padding-top: 4rem;
}

.col-md-6.mb-3.text-center {
	margin-top: 2rem;
	margin-left: 12rem;
}

#btn1 {
	margin-left: 12rem;
}

#head1 {
	margin-left: 2rem;
	margin-top: 6rem;
}
</style>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
		<!-- ======= Header/Navbar ======= -->
<nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
<div class="container">
<button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDefault"	aria-controls="navbarDefault" aria-expanded="false"	aria-label="Toggle navigation">
<span></span> <span></span> <span></span>
</button>
<a class="navbar-brand text-brand" href="index.jsp"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.2" stroke="currentColor" class="w-6 h-6 color-b" width="60px" height="60px">
<path stroke-linecap="round" stroke-linejoin="round" d="M8.25 21v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21m0 0h4.5V3.545M12.75 21h7.5V10.75M2.25 21h1.5m18 0h-18M2.25 9l4.5-1.636M18.75 3l-1.5.545m0 6.205l3 1m1.5.5l-1.5-.5M6.75 7.364V3h-3v18m3-13.636l10.5-3.819" />
</svg>Roomer</a></div></nav>
	<!-- End Header/Navbar -->
		
<section class="contact">
<div class="container">
<div class="row">
<div class="col-sm-12 section-t8">
<div class="col-md-6 mb-3 text-center" id="head1">
<h1>Create account</h1>
</div>
<div class="row">
<div class="col-md-7">
<form action="Register" method="post" id="registration-form">
	<h5>Name</h5>
<div class="row">
<div class="col-md-6 mb-3">
<div class="form-group">
<input type="text" name="fname" class="form-control form-control-lg form-control-a" placeholder="First Name" required="required" />
</div>
		</div>
<div class="col-md-6 mb-3">
<div class="form-group">
<input type="text" name="lname"	class="form-control form-control-lg form-control-a"	placeholder="Last Name" />
</div></div>
<h5>Mobile Number</h5>
<div class="col-md-12 mb-3">
<div class="form-group">
<input type="number" name="mnumber" class="form-control form-control-lg form-control-a" placeholder="Mobile number" required="required" />
</div></div>
<h5>Email</h5>
<div class="col-md-12 mb-3">
<div class="form-group">
<input type="email" name="email" class="form-control form-control-lg form-control-a"
placeholder="Email" required="required" /></div></div>
<h5>Aadhar Number</h5>
<div class="col-md-12 mb-3">
<div class="form-group">
<input type="text" name="adharid" class="form-control form-control-lg form-control-a" placeholder="Aadhar Number" required="required" />
</div>	</div>
			<h5>Birthday</h5>
				<div class="col-md-6 mb-3">
<div class="form-group">
<input type="date" name="birthday" class="form-control form-control-lg form-control-a" required="required" />
	</div></div>
<div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
<h5 class="mb-0 me-4">Gender:</h5>
<div class="form-check form-check-inline mb-0 me-4">
<input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender" value="female" />
<label class="form-check-label" for="femaleGender">Female</label>
</div>
<div class="form-check form-check-inline mb-0 me-4">
<input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender" value="male" /> 
<label class="form-check-label" for="maleGender">Male</label>
</div>
<div class="form-check form-check-inline mb-0">
<input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender" value="other" />
<label class="form-check-label" for="otherGender">Other</label>
</div>
</div>
	<h5>Password</h5>
	<div class="col-md-6 mb-3">
<div class="form-group">
<input type="password" name="password" class="form-control form-control-lg form-control-a" placeholder="Create Password" required="required">
</div></div>
		<div class="col-md-6 mb-3">
		<div class="form-group">
<input type="password" name="cpassword" class="form-control form-control-lg form-control-a"	placeholder="Confirm Password" required="required">
</div>
</div>
<h5>Address</h5>
<div class="col-md-12 mb-3">
<div class="form-group">
<input type="text" name="address" class="form-control form-control-lg form-control-a" placeholder="Address" required="required" />
</div></div>
<div class="col-md-6 mb-3 text-center">
<input type="submit" name="signup" id="signup" value="Sign Up" class="btn btn-a">
</div></div></form></div></div></div></div></div>
</section>
	<script src="assets/functionality/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<!-- pop up alert  -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats", "Account created successfully", "success");
		}
		if (status == "invalidName") {
			swal("Sorry", "Please Enter Name", "error");
		}
		if (status == "invalidNumber") {
			swal("Sorry", "Please Enter Number", "error");
		}
		if (status == "invalidEmail") {
			swal("Sorry", "Please Enter Email", "error");
		}
		if (status == "invalidId") {
			swal("Sorry", "Please Enter Aadhar number", "error");
		}
		if (status == "invalidBirthday") {
			swal("Sorry", "Please Enter Birthday", "error");
		}
		if (status == "invalidPassword") {
			swal("Sorry", "Please Enter Password", "error");
		}
		if (status == "invalidConfirmPassword") {
			swal("Sorry", "Wrong Confirm Password", "error");
		}
		if (status == "invalidAddress") {
			swal("Sorry", "Please Enter Address", "error");
		}
		if (status == "ERROR") {
			swal("sorry", "Data Already Exists", "error");
		}
	</script>

</body>
</html>