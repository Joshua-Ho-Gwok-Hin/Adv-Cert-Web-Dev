<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" --%>
<!doctype html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">	
	<link rel="stylesheet" href="/aaa/css/bootstrap.min.css">	  
	<script src="/aaa/js/bootstrap.min.js"></script> 	
	<title>ABC Community Portal</title>
	<style>
    	.navbar-collapse { justify-content: flex-end;}
	</style>
</head>
<body>
	<%@ include file="indexheader.jsp"%>
	<%--@ include file="index.jsp" --%>
		<div class="container-fluid">
			<div class="container">
				<div class="mx-2">
					<div class="row mt-2 justify-content-center">
						
						<div class="col-xs-12 col-sm-12 col-md-10 col-lg-6 col-xl-5 mt-5">
							<div class="border border-info my-2 rounded px-2 pb-1">
								<div class="my-1">
		<%-- ***********************************
		********* Start Page Content ***********
		*********************************** --%>

<div class="border border-success p-2 mt-2">
<div class="h3 text-center text-info my-5">Welcome to ABC Community Portal</div>
	<div class="d-grid gap-2 col-8 mx-auto">
		<a class="btn btn-outline-info d-block mb-3 py-3 rounded" href="showLogin" role="button">Login</a>
        <a href="forgot-password" class="mb-4 text-center">Forgotten Password?</a>
		<a class="btn btn-success d-block mb-5 py-3 rounded" href="showRegister" role="button">Register</a>
	</div>
</div>
		<%-- ***********************************
		*********** End Page Content ***********
		*********************************** --%>
								</div>
							</div>        
						</div>  
						
					</div>
				</div>
			</div>
		</div>
	<%@ include file="indexfooter.jsp"%>
</body>
</html>