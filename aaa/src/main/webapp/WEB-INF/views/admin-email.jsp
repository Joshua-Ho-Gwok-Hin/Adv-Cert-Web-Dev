<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!doctype html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">	
	<link rel="stylesheet" href="/aaa/css/bootstrap.min.css">	  
	<script src="/aaa/js/bootstrap.min.js"></script> 	
	<title>Admin Email - ABC Community Portal</title>
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
	<form id="mailSender py-1" method="post" action="sendEmail" enctype="multipart/form-data">
	<h3 class="mt-2 mb-3">Send Email</h3>
		<div class="text-info">
			<label class="form-label my-1" path="mailTo" id="receiverMail" name="mailTo">Email To: </label><br>
			<input class="form-control mb-2 rounded" type="text" path="mailTo" id="receiverMail" name="mailTo"></input>
			<label class="form-label my-1" path="subject" id="mailSubject" name="subject">Subject: </label><br>
			<input class="form-control mb-2 rounded" type="text" path="subject" id="mailSubject" name="subject"></input>
			<label class="form-label my-1" path="message" id="mailMessage" name="message">Message: </label><br>
			<textarea rows="5" class="form-control mb-2 rounded" type="text" path="message" id="mailMessage" name="message"></textarea>	
			<label class="form-label my-1" path="attachFileObj" id="mailAttachment" name="attachFileObj">Attachment: </label><br>
			<input class="form-control mb-5 rounded" type="file" path="attachFileObj" id="mailAttachment" name="attachFileObj"></input>
			<button class="btn btn-info rounded mb-3" name="sendEmail" id="sendEmail">Send Email</button>
		</div>
	</form>
							
<%-- 																		
<form id="sendEmailForm" method="post" action="sendEmail" enctype="multipart/form-data">
	<table id="emailFormBeanTable" border="0" width="80%">
		<tr>
            <td>Email To: </td>
            <td><input id="receiverMail" type="text" name="mailTo" size="65" /></td>
        </tr>
        <tr>
            <td>Subject: </td>
            <td><input id="mailSubject" type="text" name="subject" size="65" /></td>
        </tr>
        <tr>
            <td>Message: </td>
            <td><textarea id="mailMessage" cols="50" rows="10" name="message"></textarea></td>
        </tr>
        <tr>
            <td>Attachment: </td>
            <td><input id="mailAttachment" type="file" name="attachFileObj" size="60" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input id="sendEmailBtn" type="submit" value="Send Email" /></td>
        </tr>
    </table>
</form>
--%>

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