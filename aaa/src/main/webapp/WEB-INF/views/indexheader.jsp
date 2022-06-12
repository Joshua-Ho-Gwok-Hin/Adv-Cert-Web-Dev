<header class="container-fluid bg-info">
	<nav class="navbar navbar-expand-lg navbar-dark bg-info">
		<div class="container">
	      <img src="images/artboard.png" class="mx-2 mb-1" width="30" height="30" alt="ABC Community Portal Logo">
	      <a class="navbar-brand mb-1 text-center link-light" href="index">ABC Jobs Community Portal</a>
		</div>
	</nav>
</header>
<%--			
			<sec:authorize access="isAuthenticated()">
				<form action="logout" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<input type="submit"
						name="Logout" value="Logout" class="btn btn-primary"></input>
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
			</div>
		</div>
</nav>
