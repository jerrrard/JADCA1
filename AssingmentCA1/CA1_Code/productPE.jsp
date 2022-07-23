<%@page import ="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
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
<script >
function myFunction() {
	  var input, filter, ul, li, a, i;
	  input = document.getElementById("mySearch");
	  filter = input.value.toUpperCase();
	  ul = document.getElementById("myMenu");
	  li = ul.getElementsByTagName("li");
	  for (i = 0; i < li.length; i++) {
	    a = li[i].getElementsByTagName("a")[0];
	    if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
	      li[i].style.display = "";
	    } else {
	      li[i].style.display = "none";
	    }
	  }
	}
</script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>AA</title>
<style>
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
				
<div class = "row">
<input type = "text" id = "mySearch" onkeyup ="myFunction()" placeholder= "Search..." title = "Type in a category">


<ul id = "myMenu">






<%
String tourName;
String tourURL;
String tourURL2;
String tourURL3;
String tourDesc;
Integer price;
Date start_date;
Date end_date;
String promo;
String aDesc;
String buttonID;
String modalID;
String spanID;
String linkURL;
Integer productCount;
Date enter_date;
Date home_date;
String region;
String category;
Integer productID;


try {
	 // Step1: Load JDBC Driver
    Class.forName("com.mysql.jdbc.Driver");  //can be omitted for newer version of drivers

   // Step 2: Define Connection URL
   String connURL = "jdbc:mysql://localhost/ca1_product?user=root&password=T0416598a&serverTimezone=UTC";

   // Step 3: Establish connection to URL
   Connection conn = DriverManager.getConnection(connURL); 
   Connection conn2 = DriverManager.getConnection(connURL);
  // Step 4: Create Statement object

   Statement stmt = conn.createStatement();
   Statement stmt2 = conn2.createStatement();
   // Step 5: Execute SQL Command
   String sqlStr = "SELECT * FROM tours JOIN region JOIN category ON tours.region_id = region.region_id AND tours.category_id = category.category_id ORDER BY product_price ASC;"; 
   String sqlStr2 = "SELECT COUNT(product_name) FROM tours";
   ResultSet rs = stmt.executeQuery(sqlStr);
   ResultSet rs2 = stmt2.executeQuery(sqlStr2);

   // Step 6: Process Result
    while (rs.next()) {
	   productID = rs.getInt("product_id");
       tourName = rs.getString("product_name");
       tourURL = rs.getString("product_image");
       tourURL2 = rs.getString("product_image2");
       tourURL3 = rs.getString("product_image3");
       tourDesc = rs.getString("product_description");
       price = rs.getInt("product_price");
       start_date = rs.getDate("start_date");
       end_date =rs.getDate("end_date");
       promo = rs.getString("product_promotion");
       aDesc = rs.getString("product_Adescription");
       buttonID = rs.getString("btn_id");
       modalID = rs.getString("modal_id");
       spanID = rs.getString("span_id");
       linkURL = rs.getString("descURL");
       enter_date = rs.getDate("tourStart");
       home_date = rs.getDate("tourEnd");
       category = rs.getString("category_Name");
       region = rs.getString("region_name");
      // productCount = rs.getInt("COUNT(product_name)");
       
       
             
     out.println(
    		 "<li>"+
    "<div class = card >" +
    "<img  alt=avatar style =width:100% src =" + tourURL + ">"  +
    "<div class = container> <h4><b><a>" + tourName  + "</a></b></h4>" +
    "<h5> Current Promotions  :" + promo + "</h5>" +
    "<p> Category : " + category + "</p>" +
    "<p> Region : " +region + "</p>" +
    "<p> Selling Date : " + start_date + "  <--> " + end_date +"</p>" +
     "<p>" + tourDesc + "</p>" +
    "<div class=modalContainer>" +
    "<button type=button class='btn btn-info btn-lg btn-primary' data-toggle=modal data-target =#"+ buttonID + "> View More </button>" +
    "<div class='modal fade' id=" + buttonID + " role = 'dialog'>" +
    "<div class = modal-content>"+	
    "<div class = modal-header>" +
    "<button type=button class=close data-dismiss=modal>&times;</button>" +
    "<h4 class = modal-title> "+ tourName +"</h4>"+
    "</div>"+
    		
    "<div class = modal-body>"+
    
    "<div id=myCarousel class='carousel slide' data-ride=carousel>"+
    
   	"<div class=carousel-inner>"+
    
   	"<div class = 'item active'>"+
  	"<img style =width:100% src =" + tourURL + ">"  +
   	"</div>"+
  			
   	"<div class = 'item'>"+
  	"<img style =width:100% src =" + tourURL2 + ">"  +
   	"</div>"+
  			
   	"<div class = 'item'>"+
  	"<img style =width:100% src =" + tourURL3 + ">"  +
   	"</div>"+
   	"</div>"+
  	"</div>"+
   	
  	"<div class =panel-body>"+
  	"<h3><b>Additional Information</h3></b>"+
  	"<p> Price : " + price + "</p>" +
  	"<p> Description : " + aDesc + "</p>" +
  	"<p> Departure Date : " + enter_date + "</p>" +
  	"<p> Arrival Date : " + home_date + "</p>" +
  	
  	"</div>"+
  	"<div class = row>" +
    "<div class = modal-footer>"+
    "<button  type=button class=btn btn-default data-dismiss=modal>Close</button>");
     %>
     
    <%if(session.getAttribute("sessUserID")==null){
    out.println("<div class =hidden>");	
    }	else{
    	
    }
    	%>
    
    <%out.println(
    "<form action = addCart.jsp method=POST>"+

    	    "<label>Quantity</label>"+
    		"<div class = 'quantity buttons_added'>"+
    		"<input type='number' step='1' min='1' max='' name='quantity' value='1' title='Qty' class='input-text qty text' size='4' pattern='' inputmode=''/>"+
    		"</div>");
    			%>
    			
    			<%if(session.getAttribute("sessUserID")!=null){
    			
    			out.println( "<input name= 'userID' class ='hidden' value =" +  (int)session.getAttribute("sessUserID") +" >" );
    			}else{
    			}
    			%>
    			
    			<% 	
    			
    			out.println(
            
    		"<input class = 'hidden' type='text' name='cartTourName' value ='"+ tourName + "'/>" +
    	    "<input class = 'hidden' type='text' name='cartTourImage' value ='"+ tourURL + "'/>" +
    	    "<input class = 'hidden' type='text' name='cartTourPrice' value ='"+ price + "' />" +
    "<div>" +	
    "<button type='submit' class='btn btn-success'>Add to Cart</button>"+
    "</div>"+
    "</form>"+
    "</div>"+

	
	"<div class=panel-body>"+
    "<div class=modal-review>"+
	"<form action = productReview.jsp method =POST>"+
	"<button type='submit' class='btn btn-primary' name = rID value = "+productID+"> View Reviews and More!"+
	"</button>"+
    "</form>"+
	"<div id='"+spanID+"' class='collapse'>"+ tourDesc+
	"</div>"+
	"</div>"+
	"</div>"+
	"</div>"+
									
									
    


    		

    "</div>"+
	"</div>"+
    "</div>"+
    "</div>"+
    "</div>"+
     "</div>"+
     "</li>"
    		 );
	
}

   while (rs2.next()){
	   productCount = rs2.getInt("COUNT(product_name)");
	   
	  // out.println(
		//	   "<p>" + productCount + "</p>"
			//   
   }
} catch (Exception e) {
    out.println("Error :" + e);
  }


%>

</ul>
</div>

</body>
</html>