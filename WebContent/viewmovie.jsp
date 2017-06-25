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
<h2 align=center><font color=black>View Movie list :--${param.msg}</font></h2>
<%
	String qry="select * from addmovie";
	try
	{
		Connection con=Provider.getConnection();
		PreparedStatement stmt=con.prepareStatement(qry);
		ResultSet rs = stmt.executeQuery();
		out.println("");
        out.println("<table align=center border=0 width=800 height=100><tr><th width='100' height='100'>IMAGE</th><th align='center'>NAME</th><th align='center'>TYPE</th><th align=center>DELETE</th><th align=center>UPDATE</th></tr></h1>");
        while ( rs.next()) {
              
              out.println("<tr><td><img width='120' height='150' src=DisplayPhotoServlet?id="+rs.getString(1)+ "></td><td align=center>"+rs.getString(2)+"</td><td align=center>"+rs.getString(9)+"</td><td align=center><a href='deletmovie.jsp?id="+rs.getString(1)+"'><img height=20 width=20 src=images/delete.png></td><td align=center><a href='updatemovie.jsp?id="+rs.getString(1)+"&name="+rs.getString(2)+"&produ="+rs.getString(4)+"&dir="+rs.getString(5)+"&cast="+rs.getString(6)+"&dur="+rs.getString(7)+"&stry="+rs.getString(8)+"'><img height=20 width=20 src=images/edit.png></td><p/>");
        }
		
	}
	catch(Exception ee)
	{
		ee.printStackTrace();
	}

%>

</body>
</html>