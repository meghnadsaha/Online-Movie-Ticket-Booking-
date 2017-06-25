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
<h2 align=center><font color=black>View Theater list :--${param.msg}</font></h2>
<%
	String qry="select * from theater";
	try
	{
		Connection con=Provider.getConnection();
		PreparedStatement stmt=con.prepareStatement(qry);
		ResultSet rs = stmt.executeQuery();
		out.println("");
        out.println("<table align=center border=1 width=800 height=100><tr><th align='center'>ThEATER ID</th><th align='center'>NAME</th><th align='center'>CITY</th><th align='center'>ADDRESS</th><th align='center'>PINCODE</th><th align='center'>NO OF SCREEN</th><th align='center'>NO OF SEAT</th><th align=center>DELETE</th><th align=center>UPDATE</th></tr></h1>");
        while ( rs.next()) {
              
              out.println("<tr><td align=center>"+rs.getString(1)+"</td><td align=center>"+rs.getString(2)+"</td><td align=center>"+rs.getString(3)+"</td><td align=center>"+rs.getString(4)+"</td><td align=center>"+rs.getString(5)+"</td><td align=center>"+rs.getString(6)+"</td><td align=center>"+rs.getString(7)+"</td><td align=center><a href='deletetheater.jsp?id="+rs.getString(1)+"'><img height=20 width=20 src=images/delete.png></td><td align=center><a href='updatetheater.jsp?id="+rs.getString(1)+"&name="+rs.getString(2)+"&add="+rs.getString(4)+"&pin="+rs.getString(5)+"&screen="+rs.getString(6)+"&seat="+rs.getString(7)+"'><img height=20 width=20 src=images/edit.png></td><p/>");
        }
		
	}
	catch(Exception ee)
	{
		ee.printStackTrace();
	}

%>

</body>
</html>