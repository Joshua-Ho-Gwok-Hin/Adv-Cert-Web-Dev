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
	<title>Register ABC Community Portal</title>
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

<div class="form-control border-success pt-3 mt-2">
<form:form id="regForm" modelAttribute="userProfile" method="post" action="register">
<h3 class="mt-2 mb-3 text-center text-info">Register a ABC Jobster account</h3>
<div class="text-info">
	<p class="text-end text-success text-center mb-0">Log in credentials</p>
	<form:label class="form-label my-1" path="username">User Name</form:label>
		<form:input class="form-control border-success mb-2 rounded" type="text" path="username" id="username"></form:input>  
		<div class="row mb-3">
			<div class="col">
				<form:label class="form-label my-1" path="password">Password</form:label>
				<form:input class="form-control border-success mb-2 rounded" type="password" path="password" id="password"></form:input>
			</div>
			<div class="col">
				<label class="form-label my-1">Confirm Password</label>
				<form:input class="form-control border-success mb-2 rounded" type="password" path="confirmPassword" id="confirmPassword"></form:input>
			</div>
		</div>	
		<hr class="mt-4 border border-success">
		<div class="row">
			<div class="col">		
				<form:label class="form-label my-1" path="firstName">First Name</form:label><br>
				<form:input class="form-control border-success mb-2 rounded" type="text" path="firstName" id="firstName"></form:input>
			</div>
			<div class="col">		
				<form:label class="form-label my-1" path="lastName">Last Name</form:label><br>
				<form:input class="form-control border-success rounded" type="text" path="lastName" id="lastName"></form:input>
			</div>
		</div>
		<div class="rol">		
			<form:label class="form-label" path="email">Email		
				<c:if test="${duplicateEmail !=null}">
					<div class="text-danger mt-0 py-1 rounded float-end ms-5 ps-5 pt-0">${duplicateEmail}</div>
				</c:if>
			</form:label><br>
			<form:input class="form-control border-success rounded mb-3" type="email" path="email" id="email"></form:input>
		</div>
		<p class="mb-2">Please select your gender</p>
		<form:radiobutton class="border-success text-success success" path="gender" value="F"/>
		<form:label path="gender" class="ps-1 me-5 pe-5 text-success">Female</form:label>
		<form:radiobutton class="ms-5 success" path="gender" value="M"/>
		<form:label path="gender" class="ps-1">Male</form:label>
		<div class="row">
			<div class="col">
				<form:label path="birthday" class="form-label mt-3 mb-2" >Birthday</form:label>
				<form:input  class="form-control border-success rounded" type="text" path="birthday" id="birthday" placeholder="YYYY-MM-DD"></form:input>
			</div>
			<div class="col">
				<form:label path="maritalStatusId" class="form-label mt-3 mb-2">Marital Status</form:label>
				<form:select id="maritalStatusId" path="maritalStatusId" class="form-control mb-3 border-success rounded">
					<form:option class="dropdown-item" path="maritalStatusId" value="1">Single</form:option>
					<form:option path="maritalStatusId" value="2">Married</form:option>
					<form:option path="maritalStatusId" value="3">Divorced</form:option>
					<form:option path="maritalStatusId" value="4">Widow</form:option>
					<form:option path="maritalStatusId" value="5">Undisclosed</form:option>
				 </form:select>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<form:label path="country" class="form-label my-1">Country</form:label>
				<form:input type="text" path="country" id="country" class="form-control border-success rounded"></form:input>
			</div>
			<div class="col">	
				<form:label path="city" class="form-label my-1">City</form:label>
				<form:input type="text" path="city" id="city" class="form-control border-success rounded"></form:input>
			</div>
		</div>
		<hr class="my-4 border border-success">
		<div class="row">
			<div class="col-6">	
				<div class="d-grid">
					<button class="btn btn-outline-success py-2 rounded mb-3" >Clear all</button>
				</div>
			</div>	
			<div class="col-6">	
				<div class="d-grid">
					<form:button class="float-end btn btn-info py-2 rounded mb-3" name="register" id="register">Register</form:button>
				</div>
			</div>
		</div>
		<p class="text-center link-success"><a href="showLogin">Already have an account? Click here to sign in</a></p>
	</div>
</form:form>
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