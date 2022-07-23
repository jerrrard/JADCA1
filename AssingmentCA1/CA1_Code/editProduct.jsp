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
<title>Insert title here</title>

<style>
.collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.collapsible:after {
  content: '\002B';
  color: white;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2212";
}

.content {
  padding: 0 18px;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
  background-color: #f1f1f1;
}


.hidden {
  display: none;
}


</style>

</head>

<body>
			<div class="page-header">
				<h1>
					SP TOURS <small>Affordable Tours for EVERYONE!</small>
				</h1>
			</div>
	<%@include file="navbar.jsp"%>


<%
try{
	 // Step1: Load JDBC Driver
    Class.forName("com.mysql.jdbc.Driver");  //can be omitted for newer version of drivers

   // Step 2: Define Connection URL
   String connURL = "jdbc:mysql://localhost/ca1_product?user=root&password=T0416598a&serverTimezone=UTC";
    
   Connection conn = DriverManager.getConnection(connURL); 
   
   Statement stmt = conn.createStatement();
   
   String sqlStr = "SELECT  COUNT(product_name) + 1 AS productCount FROM tours;";

   
   ResultSet rs = stmt.executeQuery(sqlStr);%>
   
<%while(rs.next()) {
          int productCount = rs.getInt("productCount");
       %>
            
            
            
            
            
            <p>Editors:</p>
            <p>Legend for Categories <br>  1 - Adventure <br> 2- Religous <br> 3-Fun for the family <br> 4 - Unique </p>
            <p>Legend for Regions <br>  1 - Africa <br> 2- Asia <br> 3-Antartica <br> 4 - Europe <br> 5-North America <br> 6 - Oceanaia <br> 7-South America </p>
<button class="collapsible">Open Add Item Form</button>
<div class="content">
  <form action = addProduct.jsp method=POST>
  <label>Enter Tour Name Here</label>
  <input class = "text" name = "tourName" value="" /><br>
  
  <label>Enter Tour Description</label>
  <input class = "text" name = "tourDescription" value="" /><br>
  
  <label>Enter Image URL Here</label>
  <input class = "text" name = "tourImage" value="" /><br>
  
  <label>Enter Tour Price Here</label>
  <input class = "text" name = "tourPrice" value="" /><br>
  
  <label>Enter Tour Selling Start Date</label>
  <input  type="date" class = "date" name = "tourSSelling" value="" /><br>
  
  <label>Enter Tour Selling End Date</label>
  <input  type="date" class = "date" name = "tourESelling" value="" /><br>
  
  <label>Enter Tour Promotion</label>
  <input class = "text" name = "tourPromotion" value="" /><br>
  
  <label>Enter Tour Additional Description</label>
  <input class = "text" name = "tourADesc" value="" /><br>
  
  <label>Enter Tour Start Date</label>
  <input  type="date" class = "date" name = "tourStart" value="" /><br>
  
  <label>Enter Tour End Date</label>
  <input   type="date" class = "date" name = "tourEnd" value="" /><br>
  
  <label>Enter Tour Image URL 2</label>
  <input class = "text" name = "tourImage2" value="" /><br>
  
  <label>Enter Tour Image URL 3</label>
  <input class = "text" name = "tourImage3" value="" /><br>
  
    <label>Region ID</label>
  <input class = "text" name = "regionID" value="" /><br>
  
    <label>Category ID</label>
  <input class = "text" name = "categoryID" value="" /><br>
  
  
  
  <input class = "hidden" name = "btnID" value = "btn<%=productCount %>"/> <br>
  <input class = "hidden" name = "modalID" value = "modal<%=productCount %>"/> <br>
  <input class = "hidden" name = "spanID" value = "span<%=productCount %>"/> <br>
  
  <button type='submit' class='btn btn-success'>Add Tour</button>
  
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
	   

  
  
</div>
<button class="collapsible">Open Update Product Form</button>
<div class="content">
  <button><a href="updateProductList.jsp"> View Updatable Products</a></button>
  
  
</div>


<button class="collapsible">Open Delete Product</button>
<div class="content">
  
  <button><a href="deleteProductList.jsp"> View Deletable Products</a></button>  
</div>





<button class="collapsible">Open Delete All Products</button>
<div class="content">
 <form action = delete.jsp method=POST>
  
   <label>Delete All Tours</label><br>
 
  
  
  <button type='submit' class='btn btn-danger'>Delete All Tour</button>
  
  </form>  
</div>

<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}
</script>
            
            
     



</body>
</html>