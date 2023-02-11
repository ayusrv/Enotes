<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img{
	background:url("img/OIP.jpeg");
	width:100%;
	height:80vh;
	background-repeat:no-repeat;
	background-size:cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<!-- calling the Navbar --> 
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
	<div class="text-center">
	<h1 class="text-white"><i class="fa fa-home" aria-hidden="true"></i>ENOTES Save Your Notes</h1>
	<a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a>
	<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
	</div>
	</div>
	<%@include file="all_component/footer.jsp" %>
</body>
</html>
