<html>
	<title>206490316148</title>
	<style>
		table
		{
			border:black;
			border-collapse: collapse;
		}
	</style>
	<body>
		<h1>User Data</h1><hr/>
		<table border=1>
			<tr><td>User Name</td><td><%= request.getParameter("username") %></td></tr>
			<tr><td>Mobile Number</td><td><%= request.getParameter("mobilenumber")%></td></tr>
			<tr><td>Email</td><td><%= request.getParameter("email") %></td></tr>
			<tr><td>Gender</td><td><%= request.getParameter("gender") %></td></tr>
			<tr><td>Known Languages&nbsp;&nbsp;&nbsp;</td>
				<td><%
						String[] languages = request.getParameterValues("languages[]");
						if (languages != null && languages.length != 0) {
							for (int i = 0; i < languages.length; i++) {
								if(i!=languages.length-1)
									out.println(languages[i]+",");
								else
									out.println(languages[i]);	
							}
						}
					%>
				</td></tr>
			<tr><td>Country</td><td><%= request.getParameter("country") %></td></tr>
			<tr><td>Password</td><td><%= request.getParameter("password") %></td></tr>
		</table>	
	<br/>
	<hr/><h2>ADITYA SAVALIYA | 206490316148</h2>
	</body>
</html>