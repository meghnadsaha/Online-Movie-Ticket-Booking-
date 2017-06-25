<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.emovie.db.Provider"%>
<%@page import="java.sql.Connection"%>
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
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 el
    ements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	function view() {
		String data=document.getElementById("city").value;
		alert(data);
	}
</script>
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
      <div class="row" align="center"><h2>ADD SHOWS:-${param.msg}</h2>
  </div>
  <div>
  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
  </div>
  
  
  <form class="form-horizontal"  action="AddShow" method="post" >
  
  <div class="form-group">
			<label class="control-label col-sm-2" for="platinumrate">Show Id</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="showid" placeholder="">
				</div>
			</div>
  
		<div class="form-group">
      <label class="control-label col-sm-2" for="moviename">Movie Name</label>
      <div class="col-md-5">
        <select name="moviename" id="moviename" class="form-control">
        <option>--Select Movie--</option>
        <%
        	Connection con=Provider.getConnection();
    		PreparedStatement stmt=con.prepareStatement("select * from addmovie");
    		ResultSet rs=stmt.executeQuery();
    		while(rs.next())
    		{%>
          <option><%=rs.getString(2)%></option>
			<%}rs.close();stmt.close();%>         
        </select>
      </div>	
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="city">City</label>
      <div class="col-md-5">
        <select name="city" id="city" class="form-control">
        <option>--Select City--</option>
        <%
        	Connection conn=Provider.getConnection();
    		  PreparedStatement stmtt=conn.prepareStatement("select * from theater");
    		  ResultSet rst=stmtt.executeQuery();
    		  while(rst.next())
    		  {%>
    		  <option><%=rst.getString(3) %></option>
    		  <%}rst.close();stmtt.close();conn.close(); %>
          
        </select>
      </div>	
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="theatername">Theater Name</label>
      <div class="col-md-5">
        <select name="theatername" id="theatername" class="form-control">
        <option>--Select Theater--</option>
         <%
        	Connection conc=Provider.getConnection();
    		  PreparedStatement stmntt=conc.prepareStatement("select * from theater");
    		  ResultSet rslt=stmntt.executeQuery();
    		  while(rslt.next())
    		  {%>
    		  <option><%=rslt.getString(2) %></option>
    		  <%}rslt.close();stmntt.close();conc.close(); %>
         
       </select>
      </div>	
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="screenno">No of Screen</label>
      <div class="col-md-5">
        <select name="screenno" id="screenno" class="form-control">
          <option>--Select Screen--</option>
          <%
        	Connection connt=Provider.getConnection();
    		  PreparedStatement stment=connt.prepareStatement("select * from theater");
    		  ResultSet rslut=stment.executeQuery();
    		  while(rslut.next())
    		  {%>
    		  <option><%=rslut.getString(6) %></option>
    		  <%}rslut.close();stment.close();connt.close(); %>
        </select>
      </div>	
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="screenno">No of Seat</label>
      <div class="col-md-5">
        <select name="seatno" id="screenno" class="form-control">
          <option>--Select Screen--</option>
          <%
        	Connection co=Provider.getConnection();
    		  PreparedStatement st=co.prepareStatement("select * from theater");
    		  ResultSet rsl=st.executeQuery();
    		  while(rsl.next())
    		  {%>
    		  <option><%=rsl.getString(7) %></option>
    		  <%}rsl.close();st.close();co.close(); %>
        </select>
      </div>	
    </div>
    <div class="form-group">
			<label class="control-label col-sm-2" for="starttime">Start Time</label>
				<div class="col-md-5">
					<input type="time" class="form-control" name="starttm" placeholder="">
				</div>
			</div>
   <div class="form-group">
			<label class="control-label col-sm-2" for="endtime">End Time</label>
				<div class="col-md-5">
					<input type="time" class="form-control" name="endtm" placeholder="">
				</div>
			</div>
    <div class="form-group">
			<label class="control-label col-sm-2" for="date">Date</label>
				<div class="col-md-5">
					<input type="date" class="form-control" name="date" placeholder="date">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2" for="platinumrate">Platinum Rate</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="platinumrt" placeholder="">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2" for="goldrate">Gold Rate</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="goldrt" placeholder="">
				</div>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2" for="silverrate">Silver Rate</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="silverrt" placeholder="">
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