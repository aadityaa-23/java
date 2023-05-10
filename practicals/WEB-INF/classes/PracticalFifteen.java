import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class PracticalFifteen extends HttpServlet {
   public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession(true);
      
      String username = request.getParameter("username");
      
      if (username != null && !username.trim().isEmpty()) {
         session.setAttribute("username", username);
      }
      
      String password = request.getParameter("password");
      if (password != null && !password.trim().isEmpty()) {
         Cookie passwordCookie = new Cookie("password", password);
         response.addCookie(passwordCookie);
      }
      
      String storedUsername = (String) session.getAttribute("username");
      String storePassword = null;
      Cookie[] cookies = request.getCookies();
      if (cookies != null) {
         for (Cookie cookie : cookies) {
            if (cookie.getName().equals("password")) {
               storePassword = cookie.getValue();
               break;
            }
         }
      }
      
  
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>206490316148</title></head>");
		out.println("<style>");
		out.println("input{	font-size: 15px; Height:30px; Width:308px;}");
		out.println("td { font-size:20px; font-weight:bold;}</style><body>");
		out.println("<h1>Welcome, " + storedUsername + "</h1>");
		if (storePassword != null) {
			out.println("<p>Your password: " + storePassword + ".</p>");
		}
		out.println("<form method=\"post\">");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>Username</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td><input type=\"text\" name=\"username\" required></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Password</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td><input type=\"password\" name=\"password\" required></td>");
		out.println("</tr>");
		out.println("<tr><td></td></tr>");
		out.println("<tr>");
		out.println("<td><input type=\"submit\"></td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</form>");
		out.println("<hr/><h2>Prepared by Aditya Savaliya</h2></body></html>");
   }
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doGet(request,response);
	}
}
