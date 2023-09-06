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
<title>Roomer</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
<!-- CSS Files -->
<link href="assets/functionality/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/functionality/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/functionality/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="assets/functionality/swiper/swiper-bundle.min.css" rel="stylesheet">
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<style type="text/css">
.intro-single {
	padding: 2rem 0 3rem;
}

.section-t8 {
	padding-top: 2rem;
}
</style>
</head>

<body>
<!-- ======= Property Search Section ======= -->
<div class="click-closed"></div>
<div class="box-collapse">
<div class="title-box-d">
<h3 class="title-d">Search Property</h3>
</div>
<span class="close-box-collapse right-boxed bi bi-x"></span>
<div class="box-collapse-wrap form">
<form class="form-a" method="post" action="Search_button" id="search-form">
<div class="row">
<div class="col-md-6 mb-2">
<div class="form-group mt-3">
<label class="pb-2" for="address2">Area</label> 
<input type="text" name="address2"	class="form-control form-input form-control-a" required="required" />
</div>
</div>
<div class="col-md-6 mb-2">
<div class="form-group mt-3">
<label class="pb-2" for="rent1">Min Price</label> 
<input type="number" name="rent1" class="form-control form-input form-control-a" id="rent/seat" required="required" />
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

<!-- ======= Header/Navbar ======= -->
<nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
<div class="container">
<button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
<span></span> <span></span> <span></span>
</button>
<a class="navbar-brand text-brand" href="index.jsp"> 
<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"	stroke-width="1.2" stroke="currentColor" class="w-6 h-6 color-b" width="60px" height="60px">
<path stroke-linecap="round" stroke-linejoin="round" d="M8.25 21v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21m0 0h4.5V3.545M12.75 21h7.5V10.75M2.25 21h1.5m18 0h-18M2.25 9l4.5-1.636M18.75 3l-1.5.545m0 6.205l3 1m1.5.5l-1.5-.5M6.75 7.364V3h-3v18m3-13.636l10.5-3.819" />
 </svg>Roomer<span class="color-b"></span></a>

<div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
<ul class="navbar-nav">
<li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
<li class="nav-item"><a class="nav-link " href="property-grid.jsp">Properties</a></li>
<li class="nav-item"><a class="nav-link " href="Ownerform.jsp">Add Property</a></li>
<li class="nav-item"><a class="nav-link " href="UpdateData.jsp">Update Property</a></li>
<li class="nav-item"><a class="nav-link bg-info " href="logout"><%=session.getAttribute("name")%></a></li>	
</ul>
</div>
<button type="button" class="btn btn-b-n navbar-toggle-box navbar-toggle-box-collapse" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01">
<i class="bi bi-search"></i>
</button>
</div>
</nav>
<!-- End Header/Navbar -->
	
<!-- ======= Intro Section ======= -->
<div class="intro intro-carousel swiper position-relative">
<div class="swiper-wrapper">
<div class="swiper-slide carousel-item-a intro-item bg-image" style="background-image: url(assets/img/slide-1.jpg)">
<div class="overlay overlay-a"></div>
<div class="intro-content display-table">
<div class="table-cell">
<div class="container">
<div class="row">
<div class="col-lg-8">
<div class="intro-body">
<p class="intro-title-top">Thanesar <br> 136119</p>
<h1 class="intro-title mb-4">
<span class="color-b">204 </span> Govind Pg <br> Didar Nagar Gali-3
</h1>
<p class="intro-subtitle intro-price">
<a href="#"><span class="price-a">rent |  10,000</span></a>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="swiper-slide carousel-item-a intro-item bg-image" style="background-image: url(assets/img/slide-2.jpg)">
<div class="overlay overlay-a"></div>
<div class="intro-content display-table">
<div class="table-cell">
<div class="container">
<div class="row">
<div class="col-lg-8">
<div class="intro-body">
<p class="intro-title-top">Thanesar <br> 136119</p>
<h1 class="intro-title mb-4">
<span class="color-b">210 </span> Modern Pg <br> Kalyan Nagar Gali-7
</h1>
<p class="intro-subtitle intro-price">
<a href="#"><span class="price-a">rent |  15,000</span></a>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="swiper-slide carousel-item-a intro-item bg-image" style="background-image: url(assets/img/slide-3.jpg)">
<div class="overlay overlay-a"></div>
<div class="intro-content display-table">
<div class="table-cell">
<div class="container">
<div class="row">
<div class="col-lg-8">
<div class="intro-body">
<p class="intro-title-top">Thanesar <br> 136118</p>
<h1 class="intro-title mb-4">
<span class="color-b">105 </span> Kirpa Pg <br> Shanti Nagar Gali-5
</h1>
<p class="intro-subtitle intro-price">
<a href="#"><span class="price-a">rent |  8,000</span></a>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="swiper-pagination"></div>
</div>
<!-- End Intro Section -->

<main id="main">
<!-- ======= Intro Single ======= -->
<section class="intro-single">
<hr>
<div class="container">
<div class="row">
<div class="col-md-12 col-lg-8">
<div class="title-single-box">
<h1 class="title-single">Contact US</h1>
</div>
</div>
</div>
</div>
</section>
<!-- End Intro Single-->

<!-- ======= Contact Single ======= -->
<section class="contact">
<div class="container">
<div class="row">
<div class="col-sm-12 section-t8">
<div class="row">
<div class="col-md-7">
<form action="contact_us" method="post" id="contact-form">
<div class="row">
<div class="col-md-6 mb-3">
<div class="form-group">
<input type="text" name="name" class="form-control form-control-lg form-control-a" placeholder="Your Name" required>
</div>
</div>
<div class="col-md-6 mb-3">
<div class="form-group">
<input name="email" type="email"
class="form-control form-control-lg form-control-a"
placeholder="Your Email" required>
</div>
</div>
<div class="col-md-12 mb-3">
<div class="form-group">
<input type="text" name="subject" class="form-control form-control-lg form-control-a" placeholder="Subject" required>
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<textarea name="message" class="form-control" name="message"
cols="45" rows="8" placeholder="Message" required></textarea>
</div>
</div>
<div class="col-md-12 text-center">
<button type="submit" class="btn btn-a">Send Message</button>
</div>
</div>
</form>
</div>
<div class="col-md-5 section-md-t3">
<div class="icon-box section-b2">
<div class="icon-box-icon">
<span class="bi bi-envelope"></span>
</div>
<div class="icon-box-content table-cell">
<div class="icon-box-title">
<h4 class="icon-title">Say Hello</h4>
</div>
<div class="icon-box-content">
<p class="mb-1">Email. <span class="color-a">roomer@gmail.com</span></p>
<p class="mb-1">Phone. <span class="color-a">+91 9898985555</span></p>
</div>
</div>
</div>
<div class="icon-box section-b2">
<div class="icon-box-icon">
<span class="bi bi-geo-alt"></span>
</div>
<div class="icon-box-content table-cell">
<div class="icon-box-title">
<h4 class="icon-title">Find us in</h4>
</div>
<div class="icon-box-content">
<p class="mb-1">Kurukshetra University, <br> Kurukshetra</p>
</div>
</div>
</div>
<div class="icon-box">
<div class="icon-box-icon">
<span class="bi bi-share"></span>
</div>
<div class="icon-box-content table-cell">
<div class="icon-box-title">
<h4 class="icon-title">Social networks</h4>
</div>
<div class="icon-box-content">
<div class="socials-footer">
<ul class="list-inline">
<li class="list-inline-item">
<a href="#" class="link-one"> <i class="bi bi-facebook" aria-hidden="true"></i></a></li>
<li class="list-inline-item"><a href="#" class="link-one"> <i class="bi bi-twitter" aria-hidden="true"></i></a></li>
<li class="list-inline-item"><a href="#"
class="link-one"> <i class="bi bi-instagram"
aria-hidden="true"></i>
</a></li>
<li class="list-inline-item"><a href="#"
class="link-one"> <i class="bi bi-linkedin"
aria-hidden="true"></i>
</a></li>
</ul>
</div>
</div>
</div>
</div>
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
</div>
</div>
</div>
</footer>
<!-- End  Footer -->

<div id="preloader"></div>
<a href="#"
class="back-to-top d-flex align-items-center justify-content-center"><i
class="bi bi-arrow-up-short"></i></a>

<!-- functionality JS Files -->
<script src="assets/functionality/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/functionality/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
</body>
</html>