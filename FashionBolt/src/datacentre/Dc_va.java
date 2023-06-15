package datacentre;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Dc_log
 */
@WebServlet("/Dc_va")
public class Dc_va extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String mail=request.getParameter("email");
		System.out.println(mail);
		HttpSession obj=request.getSession();
		obj.setAttribute("Admail",mail);
		String pss=request.getParameter("Password");
		System.out.println(pss);
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
		    String qry="select * from dclog where email='"+mail+"' and password='"+pss+"' ";		
		    stmt=con.prepareStatement(qry);
			rs=stmt.executeQuery(qry);
		if(rs.next()) 
			{
				out.print("<html><body><script>alert('Data center login sucessfully') </script></body></html>");
				RequestDispatcher rd = request.getRequestDispatcher("dc_Homepag.jsp");
				rd.forward(request, response);
			}
			else
			{
				out.print("<html><body><script>alert('Incorrect email and password') </script></body></html>");
				RequestDispatcher rd = request.getRequestDispatcher("index.html");
				rd.forward(request, response);
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
		
		
}
		
		
		
		
		
		
		
		
		
		
		
		


