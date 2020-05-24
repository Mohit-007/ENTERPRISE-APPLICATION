<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>

<%@page import = "entity.Personal" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try 
{
	
	System.out.println("hello");
	int i = 0;
	Personal a = new Personal();
	String URL = "jdbc:mysql://localhost:3306/information" ;
	String UN  = "root" ;
	String PW  = "Mohit@007" ; 	
	String query = "insert into personal values (?,?,?,?,?,?,?,?)" ; 
	Personal b = new Personal();
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(URL,UN,PW);      
	
    b.name[0]  = request.getParameter("string1");
	b.id[0]  = request.getParameter("string2");
	b.password[0]  = request.getParameter("string3");
	//b.pin[0]  = request.getParameter("string4");
	b.contact[0]  = request.getParameter("string5");
	b.address[0]  = request.getParameter("string6");
	b.city[0]  = request.getParameter("string7");
	b.state[0]  = request.getParameter("string8");
	b.country[0] = request.getParameter("string9");
	
	PreparedStatement s = con.prepareStatement(query);            
	s.setString(1,b.name[0]) ;
	s.setString(2,b.id[0]) ;
	s.setString(3,b.password[0]) ;
	s.setString(4,b.address[0]) ;
	s.setString(5,b.city[0]) ;
	s.setString(6,b.state[0]) ;
	s.setString(7,b.country[0]) ;
	s.setString(8,b.contact[0]) ;
	
	
	out.println(b.name[0]);
	out.println(b.id[0]);
	out.println(b.password[0]);
	out.println(b.contact[0]);
	out.println(b.address[0]);
	out.println(b.city[0]);
	out.println(b.state[0]);
	out.println(b.country[0]);
	
	
	
	
	int count = s.executeUpdate();
	System.out.println(count) ;
	RequestDispatcher rd = request.getRequestDispatcher("login.html"); 
	rd.forward(request,response) ;
	
}

catch (Exception e) 
{
	// TODO Auto-generated catch block
	e.printStackTrace();
}		    

%>

</body>
</html>