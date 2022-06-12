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
	<title>Public Profile - ABC Community Portal</title>
	<style>
    	.navbar-collapse { justify-content: flex-end;}
	</style>
</head>
<body>
	<%@ include file="header.jsp"%>
		<div class="container-fluid">
			<div class="container">
				<div class="mx-2">
					<div class="row mt-2">
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
							<div class="border border-info my-2 rounded px-2 pb-1">
		          				<div class="my-1">
		            				<div class="text-center mb-2">My Dashboard</div>
		           					<div class="col px-4">
		            					<img src="/aaa/images/profile-pic/${userProfile.id}.png" class="img-fluid rounded-circle border" alt="Profile pic of ${userProfile.firstName}">
		            				</div>
		           					<div class="text-center mt-2">Hi, welcome back!</div>
		           					<div class="py-1 h5 text-center"><a href="public-profile?id=${userProfile.id}" data-toggle="tooltip" data-placement="right" title="View my public profile">${userProfile.firstName} ${userProfile.lastName}</a></div>
									<div class="text-center"><a href="update-profile?id=${userProfile.id}" class="btn btn-outline-info btn-sm rounded-corner">Update my profile</a></div>	
		            				<div class="border mt-3">
			            				<div class="row mt-2">
			            					<div class="col-1"></div>
				            				<div class="col-8">
				            					Connections:
				            				</div>
				            				<div class="col-1 text-end">
				            					0
				            				</div>
				            				<div class="col-auto"></div>
			            				</div>
			            				<div class="row mt-2">
			            					<div class="col-1"></div>
				            				<div class="col-8">
				            					Job authorship:
				            				</div>
				            				<div class="col-1 text-end">
				            					0
				            				</div>
				            				<div class="col-auto"></div>
			            				</div>
			            				<div class="row mt-2 mb-2">
			            					<div class="col-1"></div>
				            				<div class="col-8">
				            					Jobs applied:
				            				</div>
				            				<div class="col-1 text-end">
				            					0
				            				</div>
				            				<div class="col-auto">
				            				</div>
			            				</div>
		            				</div>
		            			</div>
							</div>           
						</div>
						<div class="col-xs-12 col-sm-12 col-md-8 col-lg-6">
							<div class="border border-info my-2 rounded px-2 pb-1">
								<div class="my-1">
		<%-- ***********************************
		********* Start Page Content ***********
		*********************************** --%>
							Content
							
							<form:form action="save" method="post" modelAttribute="userProfile"> 
							<h1>Welcome ${userProfile.firstName} ${userProfile.lastName}</h1>
							<table border="0" cellpadding="5">
								<tr>
								<td colspan="2"><img src="/aaa/images/profile-pic/${userProfile.id}.png" alt="Profile pic of ${userProfile.firstName}" width="200" height="200">
								</td>
								</tr>
								<tr>
									<td>ID: </td>
							 	<td>${userProfile.id}<form:hidden path="id"/>
									</td>
								</tr>			
								<tr>
									<td>First Name: </td>
									<td>${userProfile.firstName}<form:hidden path="firstName" /></td>
								</tr>
								<tr>
									<td>Last Name: </td>
									<td>${userProfile.lastName}<form:hidden path="lastName" /></td>
								</tr>			
								
								<tr>
									<td>Gender: </td>
									<td>${userProfile.gender}<form:hidden path="gender" /></td>
								</tr>
								<tr>
									<td>Birthday: </td>
									<td>${userProfile.birthday}<form:hidden path="birthday" /></td>
								</tr>
								<tr>
									<td>Country: </td>
									<td>${userProfile.country}<form:hidden path="country" /></td>
								</tr>		
								<tr>
									<td>City: </td>
									<td>${userProfile.city}<form:hidden path="city" /></td>
								</tr>	
								<tr>
									<td>Marital Status: </td>
									<td>${userProfile.maritalStatusId}<form:hidden path="maritalStatusId" /></td>
								</tr>
								
				<%-- ********************* Disable Temporary for Debugging ********************* 
								<tr>
									<td>Username: </td>
									<td><form:input path="username" /></td>
								</tr>	
								<tr>
									<td>Password: </td>
									<td><form:input path="password" /></td>
								</tr>
								<tr>
									<td>Confirm Password: </td>
									<td><form:input path="confirmPassword" /></td>
								</tr>		
				 ********************* Disable Temporary for Debugging ********************* --%>			
								
								<tr>
									<td colspan="2"><a href="add-friend?id=${userProfile.id}" class="btn btn-outline-success btn-sm rounded-corner">Add as friend</a></td>
								</tr>						
							</table>
							</form:form>
							
		<%-- ***********************************
		*********** End Page Content ***********
		*********************************** --%>
								</div>
							</div>        
						</div>  
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-3">
							<div class="border border-info my-2 rounded px-2 pb-1">
								<div class="my-1">
									Sponsored Ads
									<img src="/aaa/images/advertisment.jpg" class="img-fluid p-2 border" alt="Advertistment of MX Master 3">
								</div>
								<div class="my-1">
									Sponsored Ads
									<img src="/aaa/images/advertisment.jpg" class="img-fluid p-2 border" alt="Advertistment of MX Master 3">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<%@ include file="footer.jsp"%>
</body>
</html>