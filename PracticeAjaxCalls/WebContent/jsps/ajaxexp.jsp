<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
PreparedStatement pst = con.prepareStatement("select email from customers where email = ? ");
String uname = request.getParameter("email");
pst.setString(1, uname);
ResultSet rs =pst.executeQuery();

if(rs.next())
{
 out.print("success");	
}
else
{
	out.print("Failure");	
}
%>