import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class PracticalFourteen extends HttpServlet
{
	int c;
	public void init() throws ServletException {
	ServletConfig config = getServletConfig();
	c = Integer.parseInt(config.getInitParameter("count"));
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
		c++;
		PrintWriter out = request.getWriter();
		out.println("<html><title>206490316148</title>");
		out.println("<body>");
		if(c==1)
		{
			out.println("<h1>Welcome, First time."+"</br></h1>");
		}
		else
		{
			out.println("<h1/>"+c+" number of times it has been accessed since its page loading.</br>");
		}
		out.println("<hr/><h2>Prepared by Aditya Savaliya</h2>");
		out.println("</html>");
		out.println("</body>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doGet(request, response);
	}
}