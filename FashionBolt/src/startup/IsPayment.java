package startup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
/**
 * Servlet implementation class IsPayment
 */
@WebServlet("/IsPayment")
public class IsPayment extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter ou=response.getWriter();
		String name=request.getParameter("nami");
		String upi=request.getParameter("upi");
		String amount=request.getParameter("Amount");
		String expdat=request.getParameter("expdat");
		HttpSession session = request.getSession();
		String auser=(String)session.getAttribute("user");

			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");			
			String qry="update start_upreq set upiId='"+upi+"',expdat='"+expdat+"',paymentstatus='closed',user='"+auser+"',margin='"+amount+"'  ";
			int i=con.prepareStatement(qry).executeUpdate();
			
			if(i>0)
			{
				ou.print("<html><body><script>alert('login sucessfully') </script></body></html>");
				RequestDispatcher rq=request.getRequestDispatcher("Statergunique");
			   rq.forward(request,response);
			}
			else
			{
				ou.print("<html><body><script>alert('login sucessfully') </script></body></html>");
					RequestDispatcher rq=request.getRequestDispatcher("startgery.jsp");
				   rq.forward(request,response);		
			}
			}
			catch(Exception r)
			{
				r.printStackTrace();
			}
			
			
			
			
			
	}

}
