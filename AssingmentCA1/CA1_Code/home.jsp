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
			<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img width = "2800" height = "1000" src="https://static.scientificamerican.com/sciam/cache/file/1BACC933-1D88-4EB8-9B73C5B296F102F5_source.jpg" alt="Los Angeles" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Antartica</h3>
        <p>A unique experience where you can have some awesome fun!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img width = "2800" height = "1000" src="https://upload.wikimedia.org/wikipedia/commons/f/f0/1_singapore_f1_night_race_2012_city_skyline.jpg" alt="Chicago" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Singapore</h3>
        <p>With our package you can catch the Singapore GP with the best seats possible</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img width = "2800" height = "1000" src="https://thumbs.dreamstime.com/b/aerial-view-city-spa-cloudy-day-belgium-aerial-view-city-spa-belgium-114479111.jpg" alt="New York" class="d-block w-100">
      <div class="carousel-caption">
        <h3>Spa, Belgium</h3>
        <p>Be prepared to see the cars zip pass Eau Rouge</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
	
	
	<div class="row">
		<div class="col-md-4">
			<h2>
				FAQ
			</h2>
			<p>
				Question : What happens if we can't make it for the tour     Answer : If you are able to tell us 2 weeks before the day of the flight we will be able to provide
				you with a full refund 
			</p>
			<p>
				<a class="btn" href="faq.jsp">View details </a>
			</p>
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<h2>
				About
			</h2>
			<p>
		       Our promise is too provide our clients a smooth and wonderful experience with our great tours!
			</p>
			<p>
				<a class="btn" href="about.jsp">View details </a>
			</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			 
			<address>
				 <strong>SP Tours</strong><br /> Warsaw , Poland<br /> ul. Biegasa Bolesława 61<br /> <abbr title="Phone">P:</abbr>  53 146 85 41
			</address>
		</div>
		<div class="col-md-6">
			 
			<address>
				 <strong>Other ways of contact.</strong><br /> Email - sptours@gmail.com<br /> Fax - sijSP.fax<br />
			</address>
		</div>
	</div>
</div>
</body>
</html>
      </div>   
    </div>
  </div>
 
</body>
</html>