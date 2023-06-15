package boltzOrder;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


;

/**
 * Servlet implementation class MensCart
 */
@WebServlet("/MensCart")
public class MensCart extends HttpServlet {
	
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
/*		 name="cmd" value="_cart">
			<input type="hidden" name="add" value="1">
			<input type="hidden" name="business" value=" ">
			<input type="hidden" name="item_name" value=<%=BrandName%>>>
			<input type="hidden" name="amount" value=<%=MRP%>>
			<input type="hidden" name="discount_amount" value="<%=Discount %>>">
			<input type="hidden" name="currency_code" value="USD">
		String brand=request.getParameter("item_name");
		String mrp=request.getParameter("amount");
		String discount=request.getParameter("discount_amount");
	
		
		
			try	{
				
												Class.forName("com.mysql.jdbc.Driver");
												Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion","root","root");
												String query="select BrandName,MRP,Discount from update_boltzorder where BrandName='"+brand+"' and MRP='"+mrp+"' ";
												Statement st=con.createStatement();
												ResultSet rs=st.executeQuery(query);
											int i=1;
												 while(rs.next())
												{ 
													
													System.out.println(rs.getString(i));
i++;
i++;
												}
												 }
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}
*/
		RequestDispatcher r=request.getRequestDispatcher("test.html");
		r.include(request, response);
	}
}
