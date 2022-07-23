<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">


<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<%-- <%
if (session.getAttribute("sessUserID") != null) {
	int id = (int) session.getAttribute("sessUserID");
	String username = (String) session.getAttribute("sessUsername");
	String password = (String) session.getAttribute("sessPassword");
	String userRole = (String) session.getAttribute("sessUserRole");
	String email = (String) session.getAttribute("sessEmail");
}
%> --%>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="home.jsp">SP Tours</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample04" aria-controls="navbarsExample04"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample04">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<%
				if ((String)session.getAttribute("sessUserRole") == "admin") {
					out.print("<li class=\"nav-item\"><a class=\"nav-link\" href=\"viewCart.jsp\">Cart</a></li>");
				}
				%>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>
				<%
				if (session.getAttribute("sessUserID") == null) {
					out.print("<li class=\"nav-item\">" + "<a class=\"nav-link\" href=\"register.jsp\">Register</a>" + "</li>");
				}
				%>
				<li class="nav-item">
					<%
					if (session.getAttribute("sessUserID") == null) {
						out.print("<a class=\"nav-link disabled\" href=\"#\">Profile</a>");
					} else {
						out.print("<a class=\"nav-link\" href=\"displayProfile.jsp\">Profile</a>");
					}
					%>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="dropdown04" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Tours</a>
					<div class="dropdown-menu" aria-labelledby="dropdown04">
						<a class="dropdown-item" href="#">Category</a> <a
							class="dropdown-item" href="#">Price</a> <a class="dropdown-item"
							href="#">Region</a>
					</div></li>
			</ul>
			<form class="form-inline my-2 my-md-0">
				<input class="form-control" type="text" placeholder="Search">
			</form>
		</div>
	</nav>
</body>
</html>