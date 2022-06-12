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
	<title>Login - ABC Community Portal</title>
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
<form:form id="login" modelAttribute="login"  name="login" action="login" method="post">
    <h3 class="h3 text-center text-info my-4">Login to ABC Jobster</h3>
		<div class="d-grid gap-2 col-8 mx-auto">
			<form:label class="form-label my-1 text-info" for="username" path="username">User Name:</form:label>
            
			<form:input class="form-control border-success mb-2 rounded" type="text" path="username" id="username" />
         
			<form:label class="form-label my-1 text-info" for="password" path="password">Password:</form:label>
           
			<form:input class="form-control border-success rounded" type="password" path="password" id="password" />
        
			<div class="text-center" style="font-style: italic; color: red;">${errMsg}<br></div>
     	
	       	<div class="d-grid mx-auto col-12">
	           	<form:button id="login" path="login" class="btn btn-success d-block rounded mb-3 py-2 mt-3">Login to my account</form:button>
	      	</div>
			<div class="text-center mb-4" >
	         	<a href="forgot-password" class="pb-5">Forgotten Password?</a>
			</div>
		</div>
	</form:form>
</div>
<%--         
<form id="login" modelAttribute="login"  name="login" action="login" method="post">
    <h3 class="my-5 text-info text-center">Login to ABC Jobster</h3>
    <table align="center">
        <tr>
            <td>
                <label class="mb-3 pb-4" for="username" name="username">User Name:</label>
            </td>
            <td>
                <input class="mb-3 form-control" type="text" name="username" id="username" /><br>
            </td>
        </tr>
        <tr>
            <td>
                <label class="mb-3" for="password" name="password">Password:</label>
            </td>
            <td>
                <input class="mb-3 form-control" type="password" name="password" id="password" />
            </td>
        </tr>
        <tr>
			<td style="font-style: italic; color: red;">${message}</td>
     	</tr>
        <tr>
            <td colspan="2">
            	<div class="d-grid mx-auto">
                	<button id="login" name="login" class="btn btn-info d-block rounded mb-5 py-3 mt-3">Login to my account</button>
           		</div>
            </td>
        </tr>
        <tr>
			<td colspan="2" class="text-center" >
          		<a href="forgot-password">Forgotten Password? Click here to reset.</a>
			</td>
        </tr>
    </table>
</form>
-- %>   
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