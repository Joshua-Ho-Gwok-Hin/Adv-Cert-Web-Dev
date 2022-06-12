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
	<title>Thank you - ABC Community Portal</title>
	<style>
    	.navbar-collapse { justify-content: flex-end;}
	</style>
</head>
<body>
	<%@ include file="indexheader.jsp"%>
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
	<h3 class="my-5 text-center">Hi ${firstName} ${lastName}, your registration is successful!</h3>
	<p class="text-center">Thank you for joining us. You will receive a welcome email from us.</p>
	<p class="text-center mb-5">You can <a href="showLogin">click here to login</a> for the first time! See ya!</p>
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