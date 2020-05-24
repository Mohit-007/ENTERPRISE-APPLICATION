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
.header
		{
				font-size: 50px;
				padding: 20px 20px 20px 20px;
				margin: 10px 10px 10px 10px;
				color: #00b9f1;
		}
		.input
		{
			font-size: 25px;
			margin: 20px 5px 5px 5px;

		}
		.sbi
		{
			margin: 0px;
			padding: 2px 2px 2px 15px ;
			color: purple;
			font-size: 30px;

		}
		.cardheader
		{	
			
			margin-left: 0px;
			height: 20px;
			width: 420px;
			background-color: #00b9f1;
		}
		.cardhead
		{
			height: 10px;
			width: 420px;

			margin-left: 0px;
			background-color: #002e6e;
			
		}
		.h1
		{
			height: 100px;
			width: 1500px;
			background-color: #00b9f1;
			margin-top: 100px;
		}
		.h2
		{
			height: 40px;
			width: 1500px;
			background-color: #002e6e;
		}
		.pay
		{
			
			margin: 50px 25px 10px 400px;
			padding: 20px 20px 20px 0px;
			border-style: solid;
			border-color: #002e6e;;
			border-radius: 25px;
			width: 400px; 
		 	height: 200px;
		 	background-color: white;
		 	transition: 5s  ;
		 	//background-color: ;
		 	
		 	
			
		 }
		 .cardnumber
		 {
		 	height: 25px;
		 	width: 300px;
		 	margin: 5px 5px 5px 10px;
		 	padding: 5px 1px 1px 25px;
		 	font-size: 20px;
		 	border-color: #00b9f1;
		 	color: #002e6e;
		}
		.expiry
		{
			height: 25px;
			width: 50px;
			margin-top: 5px ;
			margin-left: 25px; 
			font-size: 20px;
			padding: 5px 10px 1px 10px;
			border-color: #00b9f1;
		 	color: #002e6e;

		}
		.name
		{
			height: 25px;
			width: 250px;
			margin-top: 25px ;
			margin-left: 10px; 
			font-size: 20px;
			padding: 5px 1px 1px 25px;
			border-color: #00b9f1;
		 	color: #002e6e;

		}
		.number
		{
			height: 25px;
			width: 50px;
			margin-top: 5px ;
			margin-left: 100px; 
			font-size: 20px;
			padding: 5px 1px 1px 10px;
			border-color: #00b9f1;
		 	color: #002e6e;

		}
		fieldset
		{
			border-left: none;
			border-right: none;
		}
		.option
		{
			margin-right: 0px;
		}
		.input
		{
			margin-top: 35px;
			margin-left: 25px;
			color: #002e6e;
		}
		.footer
		{
			margin-top: 70px;
			margin-left: 0px;
			background-color:  #00b9f1;
			height: 100px;
			width: 1500px;
			font-size: 50px;
			padding-left: 0px ;
			padding-top: 10px; 
			
			
		}
		img
		{
			float: right;
			margin-top: -20px;
		}
body
{
	background-color: #fff;
	
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
Store object = new Store();

	int m,l,sum=0;
	String[] namkeen = request.getParameterValues("namkeen");
	int[] price = new int[namkeen.length];
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
	}
	for(int i=0;i<namkeen.length;i++)
	{
		object.namkeen[i] = namkeen[i];
		object.quantity[i] = quantity[i];
		object.price[i] = price[i];
	}
	object.a = namkeen.length;
	Store.z = object;
	if(namkeen != null)
	{
		for(int i=0;i<namkeen.length;i++)
		{
			out.println("<tr>");
			out.println("<td>" + namkeen[i] + "</td>");
			out.println("<td>" + quantity[i] + "</td>");
			out.println("<td>" + price[i] + "</td>");
			out.println("</tr>");
			sum = sum + price[i];
		}
	}
	out.println("<tr><td></td><td>Total</td><td>" + sum + "</td>");
%>

</table>

<h2>

<%out.println(sum); %>
</h2>
<h3>Thank  You !</h3>
</div>


<div class="h1"></div>
	<div class="h2"></div>
	<div class="header">Mode of Payment
		<div class="input">
		<form class="option">
			<fieldset><input type="radio" onclick="radio()" name="yes|no" id="radio">  Debit card
			
	
			</fieldset>
			<fieldset><input type="radio" name="yes|no">  Credit card</fieldset>
			<fieldset><input type="radio" name="yes|no">  Net Banking</fieldset>
		</form>
		</div>
	</div>


<form action="payment.jsp">
<div class="pay" id="p">
	<img src="download (1).PNG" height="60px" width="150px">
	<div class="sbi">SBI</div>
	<div class="cardheader"></div>
	<div class="cardhead"></div>
	
	
		<input class="name" type="text" name="holder" placeholder="Card holder's name">
		<input class="cardnumber" type="text" name="cardnumber" placeholder="Enter the card number">
		<input class="expiry" type="text" name="expiry" placeholder="Valid">
		<input class="number" type="text" name="cvv" placeholder="CVV">	
	
	
</div>


 
<button type="submit" class="footer" >Proceed</button>
</form>


</body>
</html>