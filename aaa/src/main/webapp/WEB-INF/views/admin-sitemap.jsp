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

	<title>Sitemap - ABC Community Portal</title>
	
</head>
<body class="d-flex flex-column min-vh-100">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<%@ include file="adminheader.jsp"%>
	<div class="container">
<%-- ***********************************
********* Start Page Content ***********
*********************************** --%>


<div class=""p-3 mb-2 bg-primary"><h1 class="h1 text-center text-primary">Sitemap - ABC Community Portal</h1></div>
<br><br><br>


<h1>Sitemap</h1><br>	
	<ul class="sitemaplayout">
		<li><a href="admin">Home Page</a></li>
		<li><a href="view-profile">My Public Profile</a></li>
		<li><a href="edit-profile">Update Profile</a></li>
		<li><a href="post-job">Create a job listing</a></li>
		<li><a href="search-job">Job Search</a></li>
		<li><a href="job-history">Edit Job history</a></li>
		<li><a href="education">Edit Education Credentials</a></li>
		<li><a href="list-all">Show all users</a></li>
		<li><a href="admin-email">Send Bulk Email</a></li>
	</ul>

<%-- ***********************************
*********** End Page Content ***********
*********************************** --%>
	</div>
	<%@ include file="adminfooter.jsp"%>
</body>
</html>