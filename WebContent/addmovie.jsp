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
	
	
    
    
    <div class="container" style="margin: 10px; align="center">
      <div class="row" align="center"><h2>ADD MOVIES:-${param.msg}</h2>
  </div>
  <div>
  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
  </div>
  
  
  <form class="form-horizontal"  action="Addmovie" method="post"  enctype="multipart/form-data">
  <div class="form-group">
			<label class="control-label col-sm-2" for="movieid">MovieId</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="movieid" placeholder="Enter MovieId">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="Movie Name">Movie Name</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="moviename" placeholder="Enter MovieName">
				</div>
			</div>
			<div class="form-group">
      <label class="control-label col-sm-2" for="uploadimage" class="col-sm-2">Movie Image</label>
      <div class="col-md-5">
        <input type="file" name="uploadimage" id="uploadimage">
        <p class="help-block">
          Allowed formats: jpeg, jpg, gif, png
        </p>
      </div>
 
 
    </div>
			<div class="form-group">
			<label class="control-label col-sm-2" for="poducer">Producer</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="producer" placeholder="Enter producer Name">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="director">Director</label>
			<div class="col-md-5"> 
		        <textarea rows="3" cols="50" name="director" placeholder="director"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="director">Cast</label>
			<div class="col-md-5"> 
		        <textarea rows="3" cols="50" name="cast" placeholder="cast"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="poducer">Duration</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="duration" placeholder="Enter time duration">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="poducer">Story</label>
			<div class="col-md-5"> 
				<input type="text" class="form-control" name="duration" placeholder="Enter story type">
			</div>
		</div>
		
		<div class="form-group">
      <label class="control-label col-sm-2" for="type">Type</label>
      <div class="col-md-5">
        <select name="type" id="type" class="form-control">
          <option>--Please Select--</option>
          <option>Upcomming</option>
          <option>Running</option>
        </select>
      </div>	
    </div>
    		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-5">
				<input type="submit" class="btn btn-primary" value="ADD">
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