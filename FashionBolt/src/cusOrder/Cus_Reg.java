package cusOrder;

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
 * Servlet implementation class Cus_Reg
 */
@WebServlet("/Cus_Reg")
public class Cus_Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String u_name=request.getParameter("name");
		String u_email=request.getParameter("email");
		String u_password=request.getParameter("password");
		String u_cpassword=request.getParameter("cnpassword");
		int i=0;
		Connection con = null;
		ResultSet rs = null;
		
		PreparedStatement stmt = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");	
			String query="insert into customerorderlogin(username,email,password) values(?,?,?) ";
			stmt=con.prepareStatement(query);
			stmt.setString(1,u_name);
			stmt.setString(2,u_email);
			stmt.setString(3,u_password);
			i=stmt.executeUpdate();
			System.out.println(i);
			if(i>0)
			{
				out.print("<html><body><script>alert('Register sucessfully') </script></body></html>");
				RequestDispatcher rd = request.getRequestDispatcher("cus_log.jsp");
				rd.include(request, response);		
			}
			else
			{
				out.print("<html><body><script>alert('Register Unsucessfull') </script></body></html>");
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
