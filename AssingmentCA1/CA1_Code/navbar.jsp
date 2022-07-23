	<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-dark bg-dark static-top">

  <a class="navbar-brand" href="#">SP!</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="main_nav">

<ul class="navbar-nav">
	<li class="nav-item"> <a class="nav-link" href="home.jsp">Home </a> </li>
	<li class="nav-item"><a class="nav-link" href="about.jsp"> About US  </a></li>
	<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle"  data-toggle="dropdown">  Tours!  </a>
	    <ul class="dropdown-menu">
		  <li><a class="dropdown-item" href="product.jsp"> Popular </a></li>
		  <li><a class="dropdown-item dropdown-toggle " href="#"> Region  </a>
		  
		  	 <ul class="submenu dropdown-menu">
		  	 <form action =productRegion.jsp method=POST >
			   <button type = "submit" value = "Africa" class="dropdown-item" name = "region">Africa</button>
			    <button type = "submit" value = "Asia" class="dropdown-item" name = "region">Asia </button>
			    <button type = "submit" value = "Antartica" class="dropdown-item" name = "region">Antartica  </button>
			    <button type = "submit" value = "Europe" class="dropdown-item" name = "region">Europe </button>
			    <button type = "submit" value = "North America" class="dropdown-item" name = "region">North America</button>
                <button type = "submit" value = "South America" class="dropdown-item" name = "region">South America </button>
                <button type = "submit" value = "Oceania" class="dropdown-item" name = "region">Oceania </button>
               </form>
			 </ul>
		  </li>
		  <li><a class="dropdown-item dropdown-toggle " href="#"> Category! </a>
		  	 <ul class="submenu dropdown-menu">
			    <form action =productCategory.jsp method=POST >
			   <button type = "submit" value = "Adventure" class="dropdown-item" name = "category">Adventure</button>
			    <button type = "submit" value = "Religous" class="dropdown-item" name = "category">Religious </button>
			    <button type = "submit" value = "Fun For the family" class="dropdown-item" name = "category">Fun For the family  </button>
			    <button type = "submit" value = "Unique" class="dropdown-item" name = "category">Unique </button>
               </form>
			 </ul>
		  </li>
		  <li><a class="dropdown-item dropdown-toggle " href="#"> Price  </a>
		  	 <ul class="submenu dropdown-menu">
              <li><a class="dropdown-item" href="productPriceA.jsp">Ascending</a></li>
              <li><a class="dropdown-item" href="productPriceD.jsp">Descending</a></li>
			 </ul>
		  </li>
		  <li><a class="dropdown-item dropdown-toggle " href="#"> Date  </a>
		  	 <ul class="submenu dropdown-menu">
              <li><a class="dropdown-item" href="productDN.jsp">Nearest</a></li>
              <li><a class="dropdown-item" href="productDS.jsp">Furthest</a></li>
			 </ul>
		  </li>
		  <li><a class="dropdown-item dropdown-toggle " href="#"> Length  </a>
		  	 <ul class="submenu dropdown-menu">
              <li><a class="dropdown-item" href="productLL.jsp">Longest</a></li>
              <li><a class="dropdown-item" href="productLS.jsp">Shortest</a></li>
			 </ul>
		  </li>
		  
	    </ul>
	</li>
	<li class="nav-item dropdown">
		<a class="nav-link " href="faq.jsp" >  FAQ  </a>
	</li>
	
	
	
	    <%
    if(session.getAttribute("sessUserID") == null){
    	out.println("<div class = hidden>");
    }
    else{
    	
    }
    
    %>
		<li class="nav-item dropdown">
		<a class="nav-link " href="displayProfile.jsp" >  Profile  </a>
	</li>
        
    <%
    if(session.getAttribute("sessUserID") == null){
    	out.println("<div class = hidden>");
    	
    
    }else if(session.getAttribute("sessUserRole").equals("member")){
    	out.println("<div class = hidden>");
    }
    
    
    else if (session.getAttribute("sessUserRole").equals("admin")){
    	
    }
    
    %>

       
    <li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">  Admin  </a>
	    <ul class="dropdown-menu">
		  
		  <li><a class="dropdown-item dropdown-toggle" href="#"> Tours</a>
		  	 <ul class="submenu dropdown-menu">
			    <li><a class="dropdown-item" href="editProduct.jsp">Insert Tour</a></li>
			    <li><a class="dropdown-item" href="editProduct.jsp">Update Tour</a></li>
			    <li><a class="dropdown-item" href="editProduct.jsp">Delete Tour</a></li>
			 </ul>
		  </li>
          
		  <li><a class="dropdown-item dropdown-toggle" href="#"> Users </a>
		  	 <ul class="submenu dropdown-menu">
			    <li><a class="dropdown-item" href="register.jsp">Insert Users</a></li>
			    <li><a class="dropdown-item" href="updateUsers.jsp">Update Users</a></li>
			    
			 </ul>
		  </li>

	    </ul>
	</li>
     
</ul>
</div>

<div class = "row">
<form class="form-inline" action = result.jsp method = post>
						<input class="form-control mr-sm-2" type="text" name = "search"/> 
						<button class="btn btn-primary my-2 my-sm-0" type="submit">
							Search
						</button>
</form>
 
    <%
    if(session.getAttribute("sessUserID") == null){
    	out.println("<div class = hidden>");
    }else{
    	
    }
    
    %>


                    <a href="viewCart.jsp">
                       <button class="btn btn-success my-2 my-sm-0">Cart
							
						</button>
                        </a>
                    
                    </div>
                    </div>
                 
  </div> <!-- navbar-collapse.// -->



</nav>