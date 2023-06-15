package boltzOrder;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bolt_log
 */
@WebServlet("/Bolt_log")
public class Bolt_log extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String mail=request.getParameter("email");
		String pss=request.getParameter("Password");
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		System.out.println();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
            String qry="select * from boltzorderlogin where email='"+mail+"' and password='"+pss+"' ";		
            stmt=con.prepareStatement(qry);
    		rs=stmt.executeQuery(qry);
		if(rs.next()) {
			out.print("<html><body><script>alert('login sucessfully') </script></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("Bolthomepage.jsp");
			rd.include(request, response);
		}
		else {
			out.print("<html><body><script>alert('Incorrect email and password') </script></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.include(request, response);
	}
		
		}
		catch(Exception e)
		{
e.printStackTrace();			
		}
		
	}
	
	}

