package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Updacceptcus_ord
 */
@WebServlet("/Updacceptcus_ord")
public class Updacceptcus_ord extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     String a = request.getParameter("id");
		System.out.print("id"+            ""+a);
		PrintWriter ou=response.getWriter();	
		try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
		String qry="update customerorderlogin set status='accepted' where id='"+a+"'";
		int status=con.prepareStatement(qry).executeUpdate();
		if(status>0)
		{
			ou.print("<html><body><script>alert('updated sucessfully') </script></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("admin_homepage.jsp");
			rd.include(request, response);		
		}
		else
		{
			ou.print("<html><body><script>alert('update unsucessfull') </script></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("admin_homepage.jsp");
			rd.include(request, response);		
		}	
		
		
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	}

}
