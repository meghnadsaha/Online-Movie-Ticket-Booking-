<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.emovie.db.Provider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align=center><font color=black>View Shows list :--${param.msg}</font></h2>
<%
	String qry="select * from movieshow";
	try
	{
		Connection con=Provider.getConnection();
		PreparedStatement stmt=con.prepareStatement(qry);
		ResultSet rs = stmt.executeQuery();
		out.println("");
        out.println("<table align=center border=1 width=1000 height=100><tr><th align='center'>SHOW ID</th><th align='center'>MOVIENAME</th><th align='center'>CITY</th><th align='center'>THEATERNAME</th><th align='center'>NO OF SCREEN</th><th align='center'>NO OF SEAT</th><th align='center'>START TIME</th><th align='center'>END TIME</th><th align='center'>DATE</th><th align='center'>PLATINUM RATE</th><th align='center'>GOLD RATE</th><th align='center'>SILVER RATE</th><th align=center>DELETE</th><th align=center>UPDATE</th></tr></h1>");
        while ( rs.next()) {
              
              out.println("<tr><td align=center>"+rs.getString(1)+"</td><td align=center>"+rs.getString(2)+"</td><td align=center>"+rs.getString(3)+"</td><td align=center>"+rs.getString(4)+"</td><td align=center>"+rs.getString(5)+"</td><td align=center>"+rs.getString(6)+"</td><td align=center>"+rs.getString(7)+"</td><td align=center>"+rs.getString(8)+"</td><td align=center>"+rs.getString(9)+"</td><td align=center>"+rs.getString(10)+"</td><td align=center>"+rs.getString(11)+"</td><td align=center>"+rs.getString(12)+"</td><td align=center><a href='deleteshow.jsp?id="+rs.getString(1)+"'><img height=20 width=20 src=images/delete.png></td><td align=center><a href='updateshow.jsp?id="+rs.getString(1)+"&name="+rs.getString(2)+"&city="+rs.getString(3)+"&thname="+rs.getString(4)+"&scrn="+rs.getString(5)+"&seat="+rs.getString(6)+"&stime="+rs.getString(7)+"&etime="+rs.getString(8)+"&dt="+rs.getString(9)+"'><img height=20 width=20 src=images/edit.png></td><p/>");
        }
		
	}
	catch(Exception ee)
	{
		ee.printStackTrace();
	}

%>

</body>
</html>