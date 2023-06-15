package startup;

import java.io.IOException;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Statergunique
 */
@WebServlet("/Statergunique")
public class Statergunique extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String st="closed";
		HttpSession session=request.getSession();
		String ss=(String)session.getAttribute("refid");
		int i1=0;
			try
		{
	Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
				String qry2 = "select season,area,uploadDate from start_upreq where paymentstatus='pending' and user='"+ss+"'";

				ResultSet rr =con.prepareStatement(qry2).executeQuery();
				ResultSet rst=null;
				 while(rr.next())
				 {
				 	 String qry4 = "select statergies from statdataup where season='"+rr.getString("season").trim()+"' and area='"+rr.getString("area").trim()+"'";
				 	rst = con.createStatement().executeQuery(qry4);
                while(rst.next()) {
						
						
						String qry5 = "insert into statg values('"+rst.getString(1)+"','"+rr.getString("uploadDate")+"')";
						 i1 = con.prepareStatement(qry5).executeUpdate();
				 
				 }
				
				 }
					
					RequestDispatcher rss=request.getRequestDispatcher("statergiestablefrusers.jsp");
					rss.forward(request,response);
						
							 
				
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		

	
			}

}
