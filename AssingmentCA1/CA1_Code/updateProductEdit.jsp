<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>
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

<style>
	h1{
		text-align: center;
	}
	
	table{
		border: 1px solid black;
	}
	
	td,th{
		border: 1px solid black;
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
	
	String uId = request.getParameter("id");
	
    try {
        // Step1: Load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");  //can be omitted for newer version of drivers
        // Step 2: Define Connection URL
       String connURL = "jdbc:mysql://localhost/ca1_product?user=root&password=T0416598a&serverTimezone=UTC";
        // Step 3: Establish connection to URL
        Connection conn = DriverManager.getConnection(connURL); 
     // Step 5: Execute SQL Command
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM tours WHERE product_id = ?");
     	ps.setString(1, uId);
     	
     	
        ResultSet rs = ps.executeQuery();%>
        
        <%if(rs.next()) {
            int id = rs.getInt("product_id");
            String name = rs.getString("product_name");
            String desc = rs.getString("product_description");
            String image = rs.getString("product_image");
            String price = rs.getString("product_price");
            String sDate = rs.getString("start_date");
            String eDate = rs.getString("end_date");
            String promo = rs.getString("product_promotion");
            String aDesc = rs.getString("product_Adescription");
            String sTour = rs.getString("tourStart");
            String eTour = rs.getString("tourEnd");
            String image2 = rs.getString("product_image2");
            String image3 = rs.getString("product_image3");
            int rID = rs.getInt("region_id");
            int cID = rs.getInt("category_id");

            
            
            
            %>
            
            <p>id: <%=id %>, name: <%=name %></p>
            
            <h1>Edit Product Form</h1>
            
           <form action= updateProduct.jsp method=POST>
  
  <label>Enter ID</label>
  <input class = "text" name = "tourID" value= "<%=id %>" /><br>
  
  <label>Enter Tour Name Here</label>
  <input class = "text" name = "tourName" value= "<%=name %>" /><br>
  
  <label>Enter Tour Description</label>
  <input class = "text" name = "tourDescription" value= "<%=desc %>" /><br>
  
  <label>Enter Image URL Here</label>
  <input class = "text" name = "tourImage" value= "<%=image %>"/><br>
  
  <label>Enter Tour Price Here</label>
  <input class = "text" name = "tourPrice" value= "<%=price %>" /><br>
  
  <label>Enter Tour Selling Start Date</label>
  <input  type="date" class = "date" name = "tourSSelling" value= "<%=sDate %>" /><br>
  
  <label>Enter Tour Selling End Date</label>
  <input  type="date" class = "date" name = "tourESelling" value= "<%=eDate %>" /><br>
  
  <label>Enter Tour Promotion</label>
  <input class = "text" name = "tourPromotion" value= "<%=promo %>" /><br>
  
  <label>Enter Tour Additional Description</label>
  <input class = "text" name = "tourADesc" value= "<%=aDesc %>" /><br>
  
  <label>Enter Tour Start Date</label>
  <input  type="date" class = "date" name = "tourStart" value= "<%= sTour %>" /><br>
  
  <label>Enter Tour End Date</label>
  <input  type="date" class = "date" name = "tourEnd" value= "<%= eTour %>" /><br>
  
  <label>Enter Tour Image URL 2</label>
  <input class = "text" name = "tourImage2" value= "<%=image2 %>" /><br>
  
  <label>Enter Tour Image URL 3</label>
  <input class = "text" name = "tourImage3" value= "<%=image3 %>" /><br>
  
      <label>Region ID</label>
  <input class = "text" name = "regionID" value= "<%=rID %>" /><br>
  
    <label>Category ID</label>
  <input class = "text" name = "categoryID" value= "<%=cID %>" /><br>
  
  <button type='submit' class='btn btn-success'>Update Tour</button>
  
  </form>
        <%}%>
        
	      
	        <%
	        // Close connection
	        conn.close();
	        %>
	   <%
	   } catch (Exception e) {
	      out.println("Error :" + e);
	   }%>
	   
	
</body>
</html>

</body>
</html>