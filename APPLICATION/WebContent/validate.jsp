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
	
	int i = 0;
	Personal a = new Personal();
	String URL = "jdbc:mysql://localhost:3306/information" ;
	String UN  = "root" ;
	String PW  = "Mohit@007" ; 	
	String query = "select * from personal" ; 

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(URL,UN,PW);      
	String s1 = request.getParameter("string1");
	String s2 = request.getParameter("string2");
	Statement s = con.createStatement() ;              
	ResultSet x = s.executeQuery("select * from personal") ;
	
	int count = 0;
	while(x.next())					   
	{	
		a.name[i] = x.getString(1);
		a.id[i] = x.getString(2);
		a.password[i] = x.getString(3) ;
		
		a.contact[i] = x.getString(8);	
		a.address[i] = x.getString(4);
		a.city[i] = x.getString(5);
		a.state[i] = x.getString(6) ;
		a.country[i] = x.getString(7);
		
		i++;
		count++;
	}
	
	for(i=0;i<=count;i++)
	{
		if(s1.equals(a.id[i]) && s2.equals(a.password[i]))
		{
	a.k = i;
	Personal.object = a;
	
	RequestDispatcher rd = request.getRequestDispatcher("purchase.html"); 
	rd.forward(request,response) ;
	  
		}
	}
	
} 

catch (Exception e) 
{
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>

</body>
</html>