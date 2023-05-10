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
	<h1>Resualt</h1><hr/>
    <table border=1><tr><td colspan=2><b>Student Information</b><br/>
		<tr><td>Name</td><td><%= request.getParameter("fullname") %></td></tr>
		<tr><td>Enrolment No</td><td><%= request.getParameter("enrollment") %></td></tr>
		<tr><td>Department </td><td> Information Technology</td></tr>
		<tr><td>Sem </td><td>6th </td></tr>
	</table><br/>
    <table border=1><tr><td><b>Subject </b></td><td> <b>Marks </b></th></tr>
		<tr><td>Advance Java Programming</td><td> <%= request.getParameter("java") %> </td></tr>
		<tr><td>Web And Network Security</td><td><%= request.getParameter("wns") %>  </td></tr>
		<tr><td>Android Application Development</td><td> <%= request.getParameter("aad") %>  </td></tr>
		<tr><td>Web Designing Using Php And Mysql&nbsp;&nbsp;&nbsp;</td><td> <%= request.getParameter("php") %>  </td></tr>
		<tr><td>Project IIdrdrdd	d</td><td> <%= request.getParameter("project") %>  </td></tr>
	</table>
	<%
		float java = Float.parseFloat(request.getParameter("java"));
		float wns = Float.parseFloat(request.getParameter("wns"));
		float aad = Float.parseFloat(request.getParameter("aad"));
		float php = Float.parseFloat(request.getParameter("php"));
		float project = Float.parseFloat(request.getParameter("project"));
		String grade = "";
		double total = java+wns+aad+php+project;
		double average = total / 5.0;
		double percentage = (total / 500.0) * 100;
		if (average >= 95)
		{
			grade = "AA";
		}
		else if (average >= 85 && average < 95)
		{
			grade = "AB";
		}
		else if (average >= 75 && average < 85)
		{
			grade = "BB";
		}
		else if (average >= 65 && average < 75)
		{
			grade = "BC";
		}
		else if (average >= 55 && average < 65)
		{
			grade = "CC";
		}
		else if (average >= 45 && average < 55)
		{
			grade = "CD";
		}
		else if (average >= 35 && average < 45)
		{
			grade = "DD";
		}
		else
		{
			grade = "FF";
		}
		out.println("<br/><table border=1><tr><td colspan=2><b>Performance</b></td></tr>");
		out.println("<tr><td>Total marks </td><td>"+(int)total +"/500</td></tr>");
		out.println("<tr><td>Average marks</td><td> "+average +"</td></tr>");
		out.println("<tr><td>Percentage    </td><td>  "+percentage +"</td></tr>");
		out.println("<tr><td>Grade         </td><td>"+ grade +"</td></tr></table>");
		if(grade=="FF")
		{
			out.println( "<h4>Oops!! You have failed this exam</h4>");
		}
		else
		{
			out.println("<h4>Congratualtion!! You have passed this exam.</h4>");
		}
	%>
	<hr/><h2>ADITYA SAVALIYA | 206490316148</h2>
	</body>
</html>