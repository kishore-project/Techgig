package boltzOrder;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String brand=request.getParameter("item_name");
			String mrp=request.getParameter("amount");
			String discount=request.getParameter("discount"); 
			String imgs=request.getParameter("imagee");
System.out.println();
		try	{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
			String query="insert into cartproducts values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,brand);
			ps.setString(2,brand);
			ps.setString(3,brand);
			ps.setString(4,mrp);
			ps.setString(5,discount);
			ps.setString(6,imgs);
			ps.setString(7,brand);
			ps.setString(8,brand);
			
	int status=ps.executeUpdate();
	if(status>0)
	{
	RequestDispatcher r=request.getRequestDispatcher("boltzordershopping.jsp");
	r.include(request, response);
}
	else
	{
		RequestDispatcher r=request.getRequestDispatcher("test.html");
		r.include(request, response);
	}
		}

catch(Exception e)
{
e.printStackTrace();
}

	
	}

}
