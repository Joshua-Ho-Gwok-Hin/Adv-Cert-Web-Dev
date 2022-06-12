<style>
	.navbar-collapse { justify-content: flex-end;}
</style>
<header class="container-fluid bg-info">
	<nav class="navbar navbar-expand-lg navbar-dark bg-info">
		<div class="container">
	      <img src="images/artboard.png" class="mx-2 mb-1" width="30" height="30" alt="ABC Community Portal Logo">
	      <a class="navbar-brand mb-1 link-light" href="index">ABC Jobs Community Portal</a>
			<sec:authorize access="isAuthenticated()">
		        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		          <span class="navbar-toggler-icon"></span>
		        </button>
		        <div class="collapse navbar-collapse" id="navbarSupportedContent">
		          <ul class="navbar-nav mb-2 mb-lg-0 px-2">
		            <li class="nav-item">
		              <a class="nav-link" href="home?id=${userProfile.id}">Home</a>
		            </li>        
		            <sec:authorize access="hasRole('ABC Administrators')">
			            <li class="nav-item">
			              <a class="nav-link" href="admin-email?id=${userProfile.id}">Email</a>
			            </li>
			        </sec:authorize>
			        <sec:authorize access="hasRole('ABC Administrators')">
			            <li class="nav-item">
			              <a class="nav-link" href="kedb?id=${userProfile.id}">KEDB</a>
			            </li>
			        </sec:authorize>
		            <li class="nav-item">
		              <a class="nav-link" href="connect?id=${userProfile.id}">Connect</a>
		            </li>       
		            <li class="nav-item">
		              <a class="nav-link" href="message?id=${userProfile.id}">Message</a>
		            </li>       
		            <li class="nav-item">
		              <a class="nav-link" href="jobs?id=${userProfile.id}">Jobs</a>
		            </li>       
		            <li class="nav-item">
		              <a class="nav-link" href="public-profile?id=${userProfile.id}">Profile</a>
		            </li> 
		            <li class="nav-link d-none d-lg-block px-1">|</li>   
		            <sec:authorize access="isAuthenticated()">
						<form action="logout" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<input type="submit" name="Logout" value="Logout" class="btn btn-info pe-0 link-light"></input>
						</form>
					</sec:authorize>  
		          </ul>
				</div>
			</sec:authorize>
		</div>
	</nav>
</header>


<%--
<nav class="navbar navbar-primary">
<div class="container">
<div class="list-group list-group-horizontal">
		<div class="list-group list-group-horizontal-sm">				
			<form modelAttribute="userProfile" method="get" action="searchUserProfile">

				<div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
					<div class="input-group" role="group">
	    				<div class="input-group-text" id="btnGroupAddon">@</div>
	    				<input type="text" class="form-control" name="keyword" placeholder="Search users" aria-label="Input group example" aria-describedby="btnGroupAddon">
			 		</div>
		 
	   				<div class="btn-group me-2"  aria-label="First group">
	    				<button type="submit" value="Search" class="btn btn-outline-primary">Search</button>
	 				</div>
		 		</div>
			</form>
		</div>
		<div  class="list-group list-group-horizontal-sm">
<%--			
			<sec:authorize access="isAuthenticated()">
				<form action="logout" method="post">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<input type="submit" name="Logout" value="Logout" class="btn btn-primary"></input>
				</form>
			</sec:authorize>
 		
		</div>
		<div class="list-group list-group-horizontal-sm">
			<p class="list-group-item">Hi ${firstName} ${lastName}, Welcome back!</p>
		</div>
		
		
	<sec:authorize access="!isAuthenticated()" >
		<li class="list-group list-group-horizontal-sm"><a href="showLogin">Login</a></li>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
		<sec:authorize access="hasRole('Software Programmers')">
			<li class="list-group list-group-horizontal-sm"><a href="searchUsers">Search Users</a></li>
		</sec:authorize>
		<sec:authorize access="hasRole('ABC Administrators')">
			 <li class="list-group list-group-horizontal-sm"><a href="adminUsers">Members Administration</a></li>
		</sec:authorize>	
	</sec:authorize>
--%>		
		
	<!-- /logout must be a POST request, as csrf is enabled.
	This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
<%-- 
</div>
</div>
</nav>
 --%>



