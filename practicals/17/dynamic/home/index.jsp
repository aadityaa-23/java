<html>
<title>206490316148</title>
	<body>
	<%@page import="java.sql.*" %>
	<%! String username; String password;boolean log = false; %>
	<% username = request.getParameter("username");
	password = request.getParameter("password"); 
	try{
		log=false;
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
		Statement stmt = cn.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT username FROM login where username='"+username+"' AND password='"+password+"'");
		while(rs.next()){
			log = true;
		}
		if(log==true)
		{
			out.println("<h2>Welcome,&nbsp; "+username +"</h2>");
			out.println("<h3>You are successfully logged in!</h3>");
		}
		else
		{ 
			out.println("<h3>Oops!!Login failed</h3>");
		}
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
	
	%>
	<hr/><h2>ADITYA SAVALIYA | 206490316148</h2>
	</body>
</html>