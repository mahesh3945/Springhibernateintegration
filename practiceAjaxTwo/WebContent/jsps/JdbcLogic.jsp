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
PreparedStatement pst1 = con.prepareStatement("select * from customers where firstname =?");
PreparedStatement pst2 = con.prepareStatement("select * from customers where lastname =?");
ResultSet rs=null;
String fname="", lname="";
if(request.getParameter("fname")!=null)
{
	
	System.out.println("****");
	fname=request.getParameter("fname");
	pst1.setString(1,fname);	
	rs= pst1.executeQuery();
	System.out.println("test");
}
else if (request.getParameter("lname")!=null)
{
	System.out.println("lname");
	lname=request.getParameter("lname");
	pst2.setString(1,lname);	
	rs= pst2.executeQuery();
	System.out.println("test2");
}



if(rs.next())
{
 out.print("success");	
}
else
{
	out.print("Failure");	
}
%>