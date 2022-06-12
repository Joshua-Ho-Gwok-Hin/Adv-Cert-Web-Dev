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

	<title>List Users - ABC Community Portal</title>
	
</head>
<body class="d-flex flex-column min-vh-100">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<%@ include file="adminheader.jsp"%>
	<div class="container">
<%-- ***********************************
********* Start Page Content ***********
*********************************** --%>

<table class="table table-bordered" border="1" cellpadding="5">
<h3>Administrator Search results:</h3>
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Birthday</th>
			<th>Country</th>
			<th>City</th>
			<th>Marital Status Id</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${appearInSearchResult}" var="result">
		<tr>
			<td>${result.id}</td>
			<td>${result.firstName}</td>
			<td>${result.lastName}</td>
			<td>${result.email}</td>
			<td>${result.gender}</td>
			<td>${result.birthday}</td>
			<td>${result.country}</td>
			<td>${result.city}</td>
			<td>${result.maritalStatusId}</td>
			<td>
				<a href="admin-edit?id=${result.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="admin-delete?id=${result.id}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>

<%-- ***********************************
*********** End Page Content ***********
*********************************** --%>
	</div>
	<%@ include file="adminfooter.jsp"%>
</body>
</html>