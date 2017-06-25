<%@page import="java.sql.*"%>
<%@page import="com.emovie.db.Provider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	String s=request.getParameter("city");
	Connection con=Provider.getConnection();
	PreparedStatement stmt=con.prepareStatement("select * from movieshow");
	stmt=con.prepareStatement("select * from movieshow where city=?");
	stmt.setString(1, s);
	ResultSet  rs=stmt.executeQuery();
	out.print("<select class='list_of_movies' name='movie'>");
	  while(rs.next())
	  {%>
	  <option><%=rs.getString(2) %></option>
	  <%}rs.close();stmt.close();con.close();
	  out.print("</select>");
	  %>
	



