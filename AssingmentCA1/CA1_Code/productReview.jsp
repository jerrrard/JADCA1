<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*"%>    
    
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
		<<div class="col-md-12">
			<div class="page-header">
				<h1>
					SP TOURS <small>Affordable Tours for EVERYONE!</small>
				</h1>
			</div>
				<%@include file="navbar.jsp"%>
                 



<%


String rID = request.getParameter("rID");
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
String reviewC;
String reviewR;

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
   PreparedStatement pstmt =conn.prepareStatement( "SELECT * FROM ca1_product.tours JOIN ca1_product.region JOIN ca1_product.category ON tours.region_id = region.region_id AND tours.category_id = category.category_id WHERE product_id = ?; "); 
   PreparedStatement pstmt2 =conn.prepareStatement( "SELECT * FROM reviews WHERE product_id = ? "); 
   pstmt.setInt(1, Integer.parseInt(rID));
   pstmt2.setInt(1, Integer.parseInt(rID));
   ResultSet rs = pstmt.executeQuery();
   ResultSet rs2 = pstmt2.executeQuery();

   // Step 6: Process Result
   while (rs.next()) {
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
    		 "<div id=myCarousel class='carousel slide' data-ride=carousel>"+
    				    
   	"<div class=carousel-inner>"+
    
   	"<div class = 'item active'>"+
  	"<img width = '2800' height = '1000'  src =" + tourURL + ">"  +
  			 "<div class='carousel-caption'>"+	 
  			 "<h3>"+ tourName +"</h3>"+
  			 "</div>"+	
   	"</div>"+
  			
   	"<div class = 'item'>"+
  	"<img width = '2800' height = '1000'  src =" + tourURL2 + ">"  +
  			 "<div class='carousel-caption'>"+	 
  			 "<h3>"+ tourName +"</h3>"+
  			 "</div>"+	
   	"</div>"+
  			
   	"<div class = 'item'>"+
  	"<img width = '2800' height = '1000'  src =" + tourURL3 + ">"  +
  			 "<div class='carousel-caption'>"+	 
  			 "<h3>"+ tourName +"</h3>"+
  			 "</div>"+	
   	"</div>"+
   	"</div>"+
 
"</div>"+
"</div>"+	


"<p><h1>"+tourName+"</h1></p>"+
"<p><h3> Current Promotions : "+promo+"</h3></p>"+	 
"<p><h4> Catogory : "+category+"</h4></p>"	+
"<p> A brief description - "+tourDesc+"</p>"+	
"<p> Cost of tour!  "+price+"</p>"+
"</div>"+	 
"</div>"+	

"<div class='row'>"+	 
"<div class ='col-md-6'>"+	 
"<h2>More Info</h2>"+	 
"<h3> Region tour is Located in "+ region+"</h3>"+
"<p> Dates For Sale  :"+start_date+" --- "+end_date+"</p>"+
"<p> Tour Dates  :"+enter_date+" --- "+home_date+"</p>"+	  
"</div>"	

        

    		 );
	
}
   

%>



<div class = 'col-md-6'>
<h2>Reviews</h2>



<%

while (rs2.next()){
	   
	   reviewC = rs2.getString("review_content");
	   reviewR = rs2.getString("review_rating");

	   out.println(

		"<p> Review Rating : "+reviewR+"/10 </p>"+
	   "<p> Review Info : " + reviewC + "</p>"
		
			   
			   );
	   
	
}
} catch (Exception e) {
 out.println("Error :" + e);
}

%>

</div>
</div>
    <%
    if(session.getAttribute("sessUserID") == null){
    
    }else if (session.getAttribute("sessUserID") != null){
    	
    	%>
    	<div>
        <form action=review.jsp method=POST>
        <h3>Leave A Review </h3>
    	<input type='text' name='ReviewRating' value = "" placeholder = "Give a rating from 1- 10"/><br>
    	<input  type='text' name='ReviewInfo' value = "" placeholder = "Write Review Info" /><br>
    	<input class ="hidden" name ="reviewID" value = <%=rID %> />
    	<input class ="hidden" name ="userID" value =  <%=(int)session.getAttribute("sessUserID")%> />
    <button type='submit' class='btn btn-success'>Submit the Review!</button>
        </form>
        <% 
    }
    
    %>
		
		</div>
		</div>
		
	
	
</body>
</html>
