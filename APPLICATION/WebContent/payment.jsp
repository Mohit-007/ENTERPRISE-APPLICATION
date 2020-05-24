<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*" %>
<%@page import = "entity.Banking" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String URL = "jdbc:mysql://localhost:3306/information" ;
	String UN  = "root" ;
	String PW  = "Mohit@007" ; 	
	String query = "select * from banking" ; 
	Banking o = new Banking();
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(URL,UN,PW);      
	String s1 = request.getParameter("holder");
	String s2 = request.getParameter("cardnumber");
	String s3 = request.getParameter("expiry");
	String s4 = request.getParameter("cvv");
	
	Statement s = con.createStatement() ;              
	ResultSet x = s.executeQuery("select * from banking") ;
	int i=0,count=0;
	while(x.next())	
	{
		if(s1.equals(x.getString(1)) && s2.equals(x.getString(2)) && s3.equals(x.getString(3)) && s4.equals(x.getString(4))  )
		{
			//out.println("ok");
			
			RequestDispatcher rd = request.getRequestDispatcher("finalpage.jsp"); 
			rd.forward(request,response) ;
			  
		}
		//else
			//out.println("fuck off");
	}
	
	
	
%>
</body>
</html>