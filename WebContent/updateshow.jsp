<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>My Show a Entertainment Category Flat Bootstarp responsive Website Template | Contact :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<!-- Custom Theme files -->

<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/menu.css" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<!---- start-smoth-scrolling---->
</head>
<body>
	
	
    
    
    <div class="container" style="margin: 10px;">
      <div class="row" align="center"><h2>UPDATE SHOW:-${param.msg}</h2>
  </div>
  <div>
  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
  </div>
  
  
  <form class="form-horizontal"  action="UpdateShow" method="post">
  <div class="form-group">
			<label class="control-label col-sm-2" for="showid">Show Id</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="showid" value="<%=request.getParameter("id") %>" readonly placeholder="Enter Theater Id">
				</div>
			</div>
  <div class="form-group">
			<label class="control-label col-sm-2" for="theater name">Movie Name</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="moviename" value=<%=request.getParameter("name") %>  placeholder="Enter Theater Name">
				</div>
			</div>
			<div class="form-group">
      <label class="control-label col-sm-2" for="city">City</label>
      <div class="col-md-5">
        
        <input type="text" class="form-control" name="city" value=<%=request.getParameter("city") %>  placeholder="Enter Theater Name">
          
      </div>	
    </div>
			
			
		<div class="form-group">
			<label class="control-label col-sm-2" for="address">Theater Name</label>
			<div class="col-md-5"> 
		        <input type="text" class="form-control" name="theatername" value=<%=request.getParameter("thname") %>  placeholder="Enter Theater Name">
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="pincode">No of Screen</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="screen" value=<%=request.getParameter("scrn") %> placeholder="Enter pincode">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="screen">No of Seat</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="seat" value=<%=request.getParameter("seat") %> placeholder="Enter No of Screens">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="screen">Start Time</label>
			<div class="col-md-5"> 
				<input type="time" class="form-control" name="strttime" value=<%=request.getParameter("stime") %> placeholder="Enter No of Screens">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="screen">End Time</label>
			<div class="col-md-5"> 
				<input type="time" class="form-control" name="endtime" value=<%=request.getParameter("etime") %> placeholder="Enter No of Screens">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="screen">Date</label>
			<div class="col-md-5"> 
				<input type="date" class="form-control" name="date" value=<%=request.getParameter("dt") %> placeholder="Enter No of Screens">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="screen">Platinum Rate</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="platinumrt" value=<%=request.getParameter("prt") %> placeholder="Enter No of Screens">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="screen">Gold Rate</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="goldrt" value=<%=request.getParameter("grt") %> placeholder="Enter No of Screens">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="screen">Silver Rate</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="silverrt" value=<%=request.getParameter("srt") %> placeholder="Enter No of Screens">
			</div>
		</div>
		
		
		
		
		
		
    		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-5">
				<input type="submit" class="btn btn-primary" value="UPDATE">
				<input type="reset" class="btn btn-primary" value="CANCEL">
			</div>
		</div>
</form>
	
  </div>
 
 

 
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="js/jquery.js"></script>
 
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>

 


	
			
			
			
		
 <script src="js/responsive-tabs.js"></script>
    <script type="text/javascript">
      $( '#myTab a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      $( '#moreTabs a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      ( function( $ ) {
          // Test for making sure event are maintained
          $( '.js-alert-test' ).click( function () {
            alert( 'Button Clicked: Event was maintained' );
          } );
          fakewaffle.responsiveTabs( [ 'xs', 'sm' ] );
      } )( jQuery );

    </script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				
</body>
</html>