<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style = "text/css">
        	
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 60%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
}
.row {
  display: absolute;
}


/* Style the search box */
#mySearch {
  width: 100%;
  font-size: 18px;
  padding: 11px;
  border: 1px solid #ddd;
}

/* Style the navigation menu inside the left column */
#myMenu {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myMenu li a {
  padding: 12px;
  text-decoration: none;
  color: black;
  display: block
}

#myMenu li a:hover {
  background-color: #eee;
}

.third-level-menu
{
    position: absolute;
    top: 0;
    right: -150px;
    width: 150px;
    list-style: none;
    padding: 0;
    margin: 0;
    display: none;
}

.third-level-menu > li
{
    height: 30px;
    background: #999999;
}
.third-level-menu > li:hover { background: #CCCCCC; }

.second-level-menu
{
    position: absolute;
    top: 30px;
    left: 0;
    width: 150px;
    list-style: none;
    padding: 0;
    margin: 0;
    display: none;
}

.second-level-menu > li
{
    position: relative;
    height: 30px;
    background: #999999;
}
.second-level-menu > li:hover { background: #CCCCCC; }

.top-level-menu
{
    list-style: none;
    padding: 0;
    margin: 0;
}

.top-level-menu > li
{
    position: relative;
    float: left;
    height: 30px;
    width: 150px;
    background: #999999;
}
.top-level-menu > li:hover { background: #CCCCCC; }

.top-level-menu li:hover > ul
{

    display: inline;
}




.top-level-menu a 
{
    font: bold 14px Arial, Helvetica, sans-serif;
    color: #FFFFFF;
    text-decoration: none;
    padding: 0 0 0 10px;
    
  
    display: block;
    line-height: 30px;
}
.top-level-menu a:hover { color: #000000; }

.hidden{
display:none;
}
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
String tourID = request.getParameter("tourID");
String regionID = request.getParameter("regionID");
String categoryID = request.getParameter("categoryID");



try {
    // Step1: Load JDBC Driver
	Class.forName("com.mysql.jdbc.Driver");  //can be omitted for newer version of drivers
    // Step 2: Define Connection URL
    String connURL = "jdbc:mysql://localhost/ca1_product?user=root&password=T0416598a&serverTimezone=UTC";
    // Step 3: Establish connection to URL
    Connection conn = DriverManager.getConnection(connURL); 

    // Create prepared statement
    PreparedStatement pstmt = conn.prepareStatement("UPDATE tours SET product_name = ?, product_description = ?, product_image = ?, product_price = ?, start_date = ?, end_date =?, product_promotion = ?, product_Adescription = ?, tourStart = ?, tourEnd = ?, product_image2 = ?, product_image3 = ?, region_id = ?, category_id = ? WHERE product_id = ?");
     
  pstmt.setString(1, tourName);
  pstmt.setString(2, tourDescription);
  pstmt.setString(3, tourImage);
  pstmt.setInt(4, Integer.parseInt(tourPrice));
  pstmt.setString(5, tourSSelling);
  pstmt.setString(6, tourESelling);
  pstmt.setString(7, tourPromotion);
  pstmt.setString(8, tourADesc);
  pstmt.setString(9, tourStart);
  pstmt.setString(10,tourEnd );
  pstmt.setString(11,tourImage2 );
  pstmt.setString(12,tourImage3 );
  pstmt.setInt(13, Integer.parseInt(regionID));
  pstmt.setInt(14,Integer.parseInt(categoryID));
 pstmt.setInt(15, Integer.parseInt(tourID));
    
    
    
    // Execute the update which returns the number of rows affected
	 pstmt.executeUpdate();
    
     // Success in updating

	// Close the connection
	conn.close();
   } catch (Exception e) {
      out.println("Error :" + e);
   }
   

      %>
<p> The product has been updated </p>


</body>
</html>