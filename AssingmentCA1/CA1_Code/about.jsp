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
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<h2>
				Who are we?
			</h2>
			<div class = "row">
			<p>
				We here at SP Tours intend to put the fun in travelling by creating an awesome tour experience with our cheerful staff and banger tours!
			</p>
			<p>
				With our happy staff and expereinced tour guide we can ensure that we will create an unforgettable experience for all!
			</p>
			<p>
			 If your ready to have some <strong>FUN</strong> just book one of our tours. I strongly recommend the <strong>NORTH KOREA</strong> tour
			</p>
			
			
			</div>
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<p>
				<img src = "https://www.incimages.com/uploaded_files/image/1920x1080/getty_185272862_970636970450034_53686.jpg" width = 500 height = 500/>
 			</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<h2>
				Trust US 
			</h2>
			<p>
			Book WITH CONFIDENCE WITH SP TOURS!!!!!!!!!	
			
			</p>
		</div>
	</div>
</div>

</body>
</html>