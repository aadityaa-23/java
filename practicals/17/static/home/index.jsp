<html>
	<title>206490316148</title>
	<body>
		<%
			if(request.getParameter("username").equals("aadityaa.23")&& request.getParameter("password").equals("aadityaa@23"))
			{
				out.println("<h2>Welcome,&nbsp; "+ request.getParameter("username") +"</h2>");
				out.println("<h3>You are successfully logged in!</h3>");
			}
			else
			{ 
				out.println("<h3>Oops!!Login failed</h3>");
			}
		%>
		<hr/><h2>ADITYA SAVALIYA | 206490316148</h2>
	</body>
</html>