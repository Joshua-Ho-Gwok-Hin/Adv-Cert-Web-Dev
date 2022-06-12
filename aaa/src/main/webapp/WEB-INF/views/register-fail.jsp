<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" --%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- <script src="static/js/bootstrap.bundle.min.js"></script> --> 	
	<!-- <link rel="stylesheet" href="static/css/bootstrap.min.css"> -->	  
	<link href="http://fonts.cdnfonts.com/css/product-sans" rel="stylesheet">
	<style>
	@import url('http://fonts.cdnfonts.com/css/product-sans'); 
		* {font-family: 'Product Sans Light', sans-serif;}
	</style>

	<title>Registration Failed - ABC Community Portal</title>
	
</head>
<body class="d-flex flex-column min-vh-100">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<%@ include file="indexheader.jsp"%>
	<div class="container">
<%-- ***********************************
********* Start Page Content ***********
*********************************** --%>

	<div class=""p-3 mb-2 bg-primary"><h1 class="h1 text-center text-primary">Registration Failed</h1></div>
	<br><br><br>
	<div class="d-grid gap-2 col-4 mx-auto">
	<a href="showLogin" class="link-light text-decoration-none text-white"><h1 class="btn btn-primary btn-lg d-block mb-5 py-3">Log In</h1></a>
	<a href="showRegister" class="link-light text-decoration-none text-white"><h1 class="btn btn-info btn-lg d-block mb-5 py-3">Register</h1></a>
	</div>
	
<%-- ***********************************
*********** End Page Content ***********
*********************************** --%>
	</div>
	<%@ include file="indexfooter.jsp"%>
</body>
</html>