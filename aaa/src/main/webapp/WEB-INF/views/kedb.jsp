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
	<title>Search Users - ABC Community Portal</title>
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
									
											Known Error Database
		
<form modelAttribute="kedb" method="get" action="searchKedb">
	<div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
		<div class="input-group" role="group">
 			<div class="input-group-text" id="btnGroupAddon">@</div>
 			<input type="text" class="form-control" name="keyword" placeholder="Search problem" aria-label="Input group example" aria-describedby="btnGroupAddon">
 		</div>
		<div class="btn-group me-2"  aria-label="First group">
 			<button type="submit" value="Search" class="btn btn-outline-primary">Search</button>
		</div>
	</div>
</form>		
<div class="mb-2">List of items in KEDB
</div>
<c:forEach items="${allKEDB}" var="var">		
<div class="border border-info rounded mb-3">
<div class="row">
	<div class="col-1 border">
		<p class="">${var.id}</p>
	</div>	
	<div class="col-11 border">
		<p class="">Problem Description:<br>${var.problemDescription}</p>
	</div>	
</div>
<div class="row">
	<div class="col-3 border">
		<p class="">Filed by:<br>${var.author}</p>
	</div>
	<div class="col-3 border">
		<p class="">Created on:<br>${var.problemCreateDate}</p>
	</div>
	<div class="col-3 border">
		<p class="">Last Updated on:<br>${var.problemLastUpdate}</p>
	</div>
	<div class="col-3 border">
		<p class="">Status:<br>${var.status}</p>
	</div>
</div>
<div class="row">
	<div class="col-9 border">
		<p class="">Resolution:<br>${var.resolution}</p>
	</div>
	<div class="col-3 border">
		<p class="">Resolved on:<br>${var.resolutionDate}</p>
	</div>
</div>
</div>
	
</c:forEach>

	

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