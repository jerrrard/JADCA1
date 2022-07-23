<%@page import ="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
crossorigin="anonymous"></script>

<!-- Bootstrap files (jQuery first, then Popper.js, then Bootstrap JS) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<style type="text/css">
	@media (min-width: 992px){
		.dropdown-menu .dropdown-toggle:after{
			border-top: .3em solid transparent;
		    border-right: 0;
		    border-bottom: .3em solid transparent;
		    border-left: .3em solid;
		}

		.dropdown-menu .dropdown-menu{
			margin-left:0; margin-right: 0;
		}

		.dropdown-menu li{
			position: relative;
		}
		.nav-item .submenu{ 
			display: none;
			position: absolute;
			left:100%; top:-7px;
		}
		.nav-item .submenu-left{ 
			right:100%; left:auto;
		}

		.dropdown-menu > li:hover{ background-color: #f1f1f1 }
		.dropdown-menu > li:hover > .submenu{
			display: block;
		}
	}
</style>

</head>
<body>



<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1>
					SP TOURS <small>Affordable Tours for EVERYONE!</small>
				</h1>
			</div>
	<%@include file="navbar.jsp"%>

<%
String tourName = request.getParameter("tourName");
String tourDescription = request.getParameter("tourDescription");
String tourImage = request.getParameter("tourImage");
String tourPrice = request.getParameter("tourPrice");
String tourSSelling = request.getParameter("tourSSelling");
String tourESelling = request.getParameter("tourESelling");
String tourPromotion = request.getParameter("tourPromotion");
String tourADesc = request.getParameter("tourADesc");
String tourStart = request.getParameter("tourStart");
String tourEnd = request.getParameter("tourEnd");
String tourImage2 = request.getParameter("tourImage2");
String tourImage3 = request.getParameter("tourImage3");
String btnID = request.getParameter("btnID");
String modalID = request.getParameter("modalID");
String spanID = request.getParameter("spanID");
String regionID = request.getParameter("regionID");
String categoryID = request.getParameter("categoryID");


try{
	 // Step1: Load JDBC Driver
    Class.forName("com.mysql.jdbc.Driver");  //can be omitted for newer version of drivers

   // Step 2: Define Connection URL
   String connURL = "jdbc:mysql://localhost/ca1_product?user=root&password=T0416598a&serverTimezone=UTC";

   // Step 3: Establish connection to URL
   Connection conn = DriverManager.getConnection(connURL); 

   PreparedStatement pstmt = conn.prepareStatement( "INSERT INTO tours(product_name, product_description, product_image, product_price, start_date, end_date, product_promotion, product_Adescription, btn_id, modal_id, span_id, tourStart, tourEnd, product_image2, product_image3, region_id, category_id) VALUES(?, ?, ?, ?, ?,  ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
   pstmt.setString(1, tourName);
   pstmt.setString(2, tourDescription);
   pstmt.setString(3, tourImage);
   pstmt.setString(4,tourPrice);
   pstmt.setString(5, tourSSelling);
   pstmt.setString(6, tourESelling);
   pstmt.setString(7, tourPromotion);
   pstmt.setString(8, tourADesc);
   pstmt.setString(9, btnID);
   pstmt.setString(10, modalID);
   pstmt.setString(11, spanID);
   pstmt.setString(12,tourStart);
   pstmt.setString(13, tourEnd);
   pstmt.setString(14, tourImage2);
   pstmt.setString(15, tourImage3);
   pstmt.setString(16, regionID);
   pstmt.setString(17, categoryID);
   
   pstmt.executeUpdate();
   		   
   conn.close();
} catch (Exception e) {
   out.println("Error :" + e);
		
}



try {
    // Step1: Load JDBC Driver
	Class.forName("com.mysql.jdbc.Driver");  //can be omitted for newer version of drivers
    // Step 2: Define Connection URL
    String connURL = "jdbc:mysql://localhost/ca1_product?user=root&password=T0416598a&serverTimezone=UTC";

    // Step 3: Establish connection to URL
    Connection conn = DriverManager.getConnection(connURL); 
    // Step 4: Create Statement object
    Statement stmt = conn.createStatement();
 // Step 5: Execute SQL Command
    String sqlStr = "SELECT * FROM tours";         
    ResultSet rs = stmt.executeQuery(sqlStr);%>

    <table style="margin: auto;">
    	<tr>
    		<th>Name</th>
    		<th>Price</th>
    		<th>Quantity</th>
    		<th>Total Price</th>
    	</tr>
    		
    
    <%while (rs.next()) {
    	
    	String tName = rs.getString("product_Name");
    	String tURL = rs.getString("product_image");

 %>
        <tr>
	        <td><%=tName %></td>
	        <td><%=tURL %></td>
	
        </tr>
    <%}%>
    </table>
      
        <%
        // Close connection
        conn.close();
        %>
   <%
   } catch (Exception e) {
      out.println("Error :" + e);
   }



%>

<p> The product has been entered </p>
</body>
</html>