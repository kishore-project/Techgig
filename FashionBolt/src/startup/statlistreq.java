package startup;

import java.io.IOException;

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
 * Servlet implementation class statlistreq
 */
@WebServlet("/statlistreq")
public class statlistreq extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		
	
		
		
		int i1=0;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fashion", "root", "root");
			int sum = 0;

			/* 	String query="insert into update_boltzorder(gender,brand,size,name,discount,price,image,sleeves)values(?,?,?,?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(query);
			st.setString();
			st.setString();
			st.setString();
			st.setString();
			st.setString();
			st.setString();
			st.setString();
			st.setString();
			st.setString();
			st.setString(); */
			/* 	int i=st.executeUpdate();
				
			*/
			String csv = "E:/Din_workspace/FashionBolt";
			String csvFilePath = csv + "//WebContent//UserStatUpd//userstatreq.csv";
			String qry = "LOAD DATA INFILE '" + csvFilePath + "'"
					+ "INTO TABLE start_upreq FIELDS TERMINATED BY ','" + "OPTIONALLY ENCLOSED by '\"'"
					+ "IGNORE 1 LINES";

			
/*			PreparedStatement psd = null;
			ResultSet lresult = null;
			PreparedStatement ppp = null;
			ResultSet jd = null;
			PreparedStatement ppm = null;
			int llres = 0*/;

			int j = 0;

			PreparedStatement st = con.prepareStatement(qry);
			int i = st.executeUpdate();

			if (i > 0) {
				String qry2 = "select season,area,uploadDate from start_upreq";

				PreparedStatement ps = con.prepareStatement(qry2);
				ResultSet rr = ps.executeQuery();
				
				//System.out.println(rem);
				ResultSet rst = null;
				//String rem=rr.getString(3);
				while (rr.next()) {
					
					String qry4 = "select statergies from statdataup where season='"+rr.getString("season").trim()+"' and area='"+rr.getString("area").trim()+"'";
					rst = con.createStatement().executeQuery(qry4);
					//System.out.print(rst.next());
					while(rst.next()) {
						
						
						String qry5 = "insert into statg values('"+rst.getString(1)+"','"+rr.getString("uploadDate")+"')";
						i1 = con.prepareStatement(qry5).executeUpdate();
											}
				}
			}
			if (i1> 0) {
				String qry6="update start_upreq set report='0' ";
				int ll=con.prepareStatement(qry6).executeUpdate();
				
	RequestDispatcher rss=request.getRequestDispatcher("statergiestablefrusers.jsp");
	rss.forward(request,response);
		}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
