<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ page import="java.sql.*" %>
<%
/* String tourID = request.getParameter("tourid"); */
String tourID = "7";
/* HttpSession session = request.getSession(); */
String tourName = "";
String briefDesc = "";
String detailDesc = "";
float price = 0;
int slotsAvailable = 0;



boolean found = false; //flag to indicate if user exists

	try {
		
		Class.forName("com.mysql.jdbc.Driver");

	String sqlStr = "SELECT * FROM tours where tour_id = " + tourID;
		String connURL = "jdbc:mysql://localhost/jad_ca1?user=root&password=root&serverTimezone=UTC";
		Connection conn = DriverManager.getConnection(connURL);
		/* Statement stmt = conn.createStatement(); */
		/* ResultSet result = stmt.executeQuery(sqlStatement); */
		PreparedStatement pstmt = conn.prepareStatement(sqlStr);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			out.print("record found <br>");
			tourName = rs.getString("tour_name");
			briefDesc = rs.getString("brief_desc");
			detailDesc = rs.getString("detail_desc");
			price = rs.getFloat("price");
			slotsAvailable = rs.getInt("slots_available");
			found = true;
			
		}else{
			System.out.print("record not found");
			out.print("<h1>404 record not found</h1>");
		}
		conn.close();
	} catch (Exception e) {
		out.print("ERROR: " + e.toString());
		
	}
	if(found) {
		if (session != null) {
			out.print("<br><br>Logged in as " + session.getAttribute("sessUserID") + "<br><br>");
			session.setMaxInactiveInterval(60);
		}

		
	} else {
		response.sendRedirect("JAD_Test/errorPage.jsp");
	}

%>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<%= tourName %> <br>
	<%= briefDesc %> <br>
	<%= detailDesc %> <br>
	<%= price %> <br>
	<%= slotsAvailable %> <br>
</body>
</html>