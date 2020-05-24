<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "entity.Personal" %>
    <%@page import = "entity.Store" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.first
{
	color: #FFD700;
	font-size: 40px;
}
.second
{
	font-size: 50px;
	margin-left: 350px;
	color: green;
}
.scratchcard
{
	position: absolute;
	height: 100px;
	width: 100px;
	background-color: #00BEFE ;
	margin-left: 600px;
	margin-top: 100px;
	transition: transform 3s 0.1s;
	text-align: center;
	padding: 75px;
	color: white;
	font-size: 25px;
	border-radius: 25px;
	font-style: italic;
}
.card
{
	height: 220px;
	width: 225px;
	background-color: #E6E6FA ;
	margin-left: 600px;
	margin-top: 100px;
	float: left;
	padding-left: 25px ;
	padding-top: 25px;
	color:  #00BEFE;
	border-radius: 25px;	
	font-style: : italic;
}
.scratchcard:hover
{
	transform: translateX(225px);
}
.btn
{
	margin-top: 10px;
	margin-left: 70px;
	background-color: green;
	height: 50px;
	width: 50px;
	color: white;
}
.headg
{
	height: 100px;
	width: 1500px;
	background-color: #7CFC00;
}
.headerg
{
	height: 40px;
	width: 1500px;
	background-color: #008000;
}	
.bill
{
	margin: 25px 25px 10px 400px;
	padding: 20px 20px 20px 20px;
	border-style: solid;
	border-color: #008000;
	width: 600px; 
 	height: 1000px;
 	font-size: 25px;
 	font-style: italic;
 	
}

h1
{
	margin-left: 200px;
	margin-right: auto;
	color: #ADFF2F;
}
h2
{
	margin-left: 500px;
	margin-right: auto;
	font-size: 50px;
	color: lime;
}
h3
{
	margin-left: 100px;
	margin-right:auto;
	font-size: 75px;
	color: green;
	padding-bottom: 20px;
}
h4
{
	margin-left: 10px;
	font-size: 20px;
	color: darkgreen;
}
table
{	
	word-spacing: 10px;
	color: darkgreen;
	font-size: 25px;
	//border: 5px solid black;
	margin-left: 75px;
	//margin-top: 50px;
}
th
{
	text-decoration: underline;
	//color: yellow;
	//border: 5px solid black;
}
td
{
	//color: orange;
	//border: 5px solid black;
}
.personal
{
	color: purple;
}


</style>
</head>
<body>
<div class="first">
	<h1>Congratulations !!!</h1>
	</div>
	<p class="second">your order is success fully placed !!!</p>
<div class="headg"></div>
<div class="headerg"></div>

<div class="bill">
		<h1>INVOICE</h1>
	
<div class="personal">
<%
	 
	out.println("Name"+ ":  " + Personal.object.name[Personal.object.k]);
	out.println("<br>");
	out.println("<br>");
	out.println("Address"+ ":  " + Personal.object.address[Personal.object.k]);
	out.println("<br>");
	out.println("<br>");
	out.println("contact"+ ":  " + Personal.object.contact[Personal.object.k]);
	out.println("<br>");
	out.println("<br>");
	out.println("city"+ ":  " + Personal.object.city[Personal.object.k]);
	out.println("<br>");
	out.println("<br>");
	out.println("state"+ ":  " + Personal.object.state[Personal.object.k]);
	out.println("<br>");
	out.println("<br>");
	out.println("country"+ ":  " + Personal.object.country[Personal.object.k]);
	out.println("<br><br>");
	
%>
</div>
  <table cellspacing="25px">
<tr>			
<% 	

	out.println("<th>variety</th>");
	out.println("<th>quantity</th>");
	out.println("<th>price</th>");
	
%>
</tr>

<% 
	int m,l,sum=0;
	/*String[] namkeen = request.getParameterValues("namkeen");
	//int[] price = new int[namkeen.length];
	int[] quantity = new int[namkeen.length];
	int k = 0;
	for(int i=1;i<=10;i++)
	{
		String s = "pri" + i;
		String q = "qty" + i;
		m = Integer.parseInt(request.getParameter(q));
		l = Integer.parseInt(request.getParameter(s));
		if(m !=0 && l !=0)
		{
			quantity[k] = m;
			price[k] = l;
			k++;
		}
	}*/
	
	//if(namkeen != null)
	//{
		for(int i=0;i<Store.z.a;i++)
		{
			out.println("<tr>");
			out.println("<td>" + Store.z.namkeen[i] + "</td>");
			out.println("<td>" + Store.z.quantity[i] + "</td>");
			out.println("<td>" + Store.z.price[i] + "</td>");
			out.println("</tr>");
			sum = sum + Store.z.price[i];
		}
	//}
	out.println("<tr><td></td><td>Total</td><td>" + sum + "</td>");
%>

</table>

<h2>

<% out.println(sum); %>
</h2>
<h3>Thank  You !</h3>
</div>

<div class="scratchcard">
		Hover Me
	</div>
	<div class="card">
		<p>CONGRATULATIONS !</p> 
		<p>YOU WON A CASH BACK </p>
		<h4>&#8377;<%	double a = (double) 11/100;
				
				out.println("  " + sum*a); %></h4>
		<button class="btn">ADD</button>
	</div>

	
</body>
</html>