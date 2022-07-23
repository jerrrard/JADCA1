<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>


	<%@include file="navbar.jsp"%>

	<%-- FOR JAD CA1 --%>
	<div class="container-fluid">


		<div class="row d-flex align-items-center justify-content-center">
			<h1>Login Page</h1>
		</div>


		<div class="row d-flex justify-content-center">
			<div
				class="form-group border p-4 text-center justify-content-between">
				<form action="../VerifyUsers" name="form1" method="post">
					<%
					String message = request.getParameter("errCode");
					if (message != null && message.equals("invalidLogin")) {
						out.print("<h1> Sorry, invalid login </h1>");
					}
					
					/* int userID = (int)session.getAttribute("sessUserID"); */
					String username = (String) session.getAttribute("sessUsername");

					if (session.getAttribute("sessUserID") == null) {
						out.print("<h1 class=\"mb-4\"> You are not logged in! </h1>");
					} else {
						out.print("<h1 class=\"mb-4\"> You are logged in as " + username + "! </h1>");
					}
					/* 	String username = request.getParameter("username");
						String password = request.getParameter("password");	
						/* String targetURL=response.encodeRedirectURL("newVerifyUser.jsp"); */
					/* response.sendRedirect(targetURL); */ //URL rewriting .. note the jsessionid in the browser text bar */
					%>

					<label> Username: </label><br> <input type="text"
						name="username" size="32" id="username" required> <br> <br>

					<label> Email: </label><br> <input type="email" name="email"
						size="32" id="email" required> <br> <br> <label>Password:
					</label><br> <input type="password" name="password" size="32"
						id="password" required><br> <br> <input type="submit"
						name="btnSubmit" value="Login" id="btnSubmit" class="float-right">
					<input type="Reset" value="Clear" class="float-right"> <br>
					<br> New to the website? <a href="register.jsp">Register
						here!</a>
				</form>
			</div>
		</div>
	</div>


</body>
<script>
	
</script>
</html>