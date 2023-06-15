package cusOrder;

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
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class testsucess
 */
@WebServlet("/testsucess")
public class testsucess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	PrintWriter ps=response.getWriter();
	    
		 HttpSession session=request.getSession();
		 String smail=(String)session.getAttribute("tomail");
	    System.out.print("mmmss");
		 try
	    {
	    	Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
	    String g="select Deal from productorreq where BrandEmailID='"+smail+"'";
	    ResultSet st=con.prepareStatement(g).executeQuery();
	   
st.first();
	    System.out.print("sss");
	    if(st.getString("Deal").equalsIgnoreCase("closed"))
	    {
	    	ps.print("<html><body>alert(Deal  finished)</body></html>");
	    	RequestDispatcher rd=request.getRequestDispatcher("sucessfull.jsp");
	    	rd.forward(request, response);
	   }
	   
	    else
	    {
	    	ps.print("<html><body>alert(Deal is not finished)</body></html>");
	    	RequestDispatcher rd=request.getRequestDispatcher("cusO_home.jsp");
	    	rd.forward(request, response);
	   }
	   
	    }
	    catch(Exception e)
	    {
	    e.printStackTrace();
	    }
	    


	}

}
