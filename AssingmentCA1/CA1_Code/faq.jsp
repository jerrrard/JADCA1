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
				Some Commonly Asked Questions.
			</h2>
			<p><strong>Q - What to do if I lost my ticket</strong> </p>
			<p>A - Please Contact us as we will help you get a replacement </p>
			<p><strong>Q - What to do if we fall sick a few days before the trip</strong> </p>
			<p>A - If you are able to inform us 12 days before we can refund up to 100%, 5 days refund up to 50%, Anything under 4 days is no refund sadly    </p>
			
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<h2>
				What to do in case of an emergency overseas
			</h2>
			<p>
Do not panic as we give everyone an emergency phone that can be used to call local authorities in that area.
			</p>
			<p>
			The phone is strictly for emergency uses and all clients will be needed to return it after the tour.
			</p>
			<p>
			If the phone is found to be used for any inapropriate uses there will be up to a 500USD fine
			</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<h2>
				Any more questions. Contact us at !
			</h2>
			<p>
				Phone Number : 53 146 85 41
			</p>
			<p>
			Email  :  sptours@gmail.com
			</p>
			<p>
			 Fax : sijSP.fax
			</p>
			
		</div>
	</div>
</div>
</body>
</html>