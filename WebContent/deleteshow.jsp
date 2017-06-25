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

<%
	String value=request.getParameter("id");
	String qry="delete from movieshow where showid=?";
	int status=0;
try
	{
		Connection con=Provider.getConnection();
		PreparedStatement stmt=con.prepareStatement(qry);
		stmt.setString(1, value);
		status=stmt.executeUpdate();		
	}
	catch(Exception ee)
	{
		ee.printStackTrace();
	}
    if(status>0)
    {
    	response.sendRedirect("viewshow.jsp?msg=item deleted");
    }
    else
    {
    
    	response.sendRedirect("viewshow.jsp?msg=item deletion fails");
    }
%>

</body>
</html>