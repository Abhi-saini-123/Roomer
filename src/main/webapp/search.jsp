<%@page import="java.sql.*"%>
<%@page import="java.io.IOException"%>

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
<link href="assets/functionality/animate.css/animate.min.css"	rel="stylesheet">
<link href="assets/functionality/bootstrap/css/bootstrap.min.css"	rel="stylesheet">
<link href="assets/functionality/bootstrap-icons/bootstrap-icons.css"	rel="stylesheet">
<link href="assets/functionality/swiper/swiper-bundle.min.css"	rel="stylesheet">
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<style>
table {
	width: 60%;
	margin: 20px;
	border-radius: 2px;
	border: 1px solid rgb(39, 61, 80);
	padding: 20px;
	background-color: rgb(81, 246, 128);
}

td {
	color: rgb(15, 50, 25);
}

.container {
	margin-top: 35px;
}
</style>
</head>

<body>
<section>
<div class="container">
<div class="row">
<div class="col-md-12 col-lg-8">
<div class="title-single-box">
<h1 class="title-single">Searched Properties</h1>
</div></div>
<div class="col-md-12 col-lg-4">
<nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
<ol class="breadcrumb">
<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
<li class="breadcrumb-item active" aria-current="page">Search Area</li>
</ol></nav></div></div></div>
</section>
	<!-- End Intro Single-->

	<!-- ======= Property Grid ======= -->
<section class="property-grid grid">
<div class="container">
<div class="row">
<%
try {
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomer?useSSL=false", "root", "absaini");
Statement st = con.createStatement();
String Address2 = request.getParameter("address2");
String Rent1 = request.getParameter("rent1");
String sqlstr = "select member.Fname,member.Lname,member.Mnumber,member.Email,owner.Address2,owner.Image1,owner.Image2,owner.Image3,owner.Seat,owner.Rent1,owner.Room,owner.Rent2,owner.Description from member inner join owner on member.Adharid = owner.Adharid where Address2 = '"
+ Address2 + "' and Rent1 ='" + Rent1 + "';";
ResultSet rst = st.executeQuery(sqlstr);
while (rst.next()) {
%>
<table>
<tbody>
<tr>
<td colspan="2"><%=rst.getString("Fname")%> <%=rst.getString("Lname")%></td>
<td rowspan="8" style="padding-left: 260px;">
<img alt="not loaded" src="images/<%=rst.getString("Image1")%> "width="192" height="198"> 
<img alt="not loaded" src="images/<%=rst.getString("Image2")%> " width="192" height="198"> 
<img alt="not loaded" src="images/<%=rst.getString("Image3")%> " width="192" height="198"></td>
</tr>
<tr>
<td colspan="2"><%=rst.getString("Address2")%></td>
</tr>
<tr>
<td>Seats Avaliable:</td>
<td><%=rst.getString("Seat")%></td></tr>
<tr><td>Rent per Seat:</td>
<td><%=rst.getString("Rent1")%></td></tr>
<tr>
<td>Rooms Avaliable:</td>
<td><%=rst.getString("Room")%></td></tr>
<tr>
<td>Rent per Room:</td>
<td><%=rst.getString("Rent2")%></td></tr>
<tr>
<td>Contact:</td>
<td><%=rst.getString("Mnumber")%></td></tr>
<tr><td>Email:</td>
<td><%=rst.getString("Email")%></td></tr>
<tr><td>Details:</td>
<td colspan="3"><%=rst.getString("Description")%></td></tr>
</tbody>
</table>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
out.print(e);
}
%>
</div>
</div>
</section>
	<!-- End Property Grid Single-->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
<i class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
<script src="assets/functionality/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/functionality/swiper/swiper-bundle.min.js"></script>
<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
</body>
</html>