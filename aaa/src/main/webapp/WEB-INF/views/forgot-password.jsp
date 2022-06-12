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
	<title>Forgot Password - ABC Community Portal</title>
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

<h1 class="text-center my-5 text-info">Reset your password</h1>
	<form:form id="resetPassword" modelAttribute="userProfile" action="processReset"   method="post"> 
<%--
	<form>
--%>		
		<div class="text-info">
              <table align="center">
                  <tr>
                      <td>
                          <label class="mb-3 pb-4" for="email" path="email">Email Address: </label>
                      </td>
                      <td>
                          <input class="mb-3 form-control" type="text" path="email" id="email" /><br>
                      </td>
                  </tr>
                	<tr>
                      <td colspan="2">
                      <div class="d-grid mx-auto">
                      <input type="submit" class="btn btn-outline-success py-3 rounded-corner" value="Reset my password">
	               <%-- 
	               <button id="processReset" path="processReset" class="btn btn-info d-block mb-5 py-3 rounded">Reset my password</button>
	               --%>       
                      </div>
                      </td>
                  </tr>                    
              </table>
		</div>
    <table align="center">
        <tr>
            <td style="font-style: italic; color: red;">${message}</td>
        </tr>
    </table>
	</form:form>

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