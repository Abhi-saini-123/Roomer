package owner_property_details;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Search_button
 */
@WebServlet("/Search_button")
public class Search_button extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Address2 = request.getParameter("address2");
   		String Rent1 = request.getParameter("rent1");
   		
   		RequestDispatcher dispatcher = null;
   		Connection con=null;
   		
   		if(Address2 == null || Address2.equals(""))
   		{
   			
   			dispatcher = request.getRequestDispatcher("index.jsp");
   			dispatcher.forward(request, response);
   		}
   		if(Rent1 == null || Rent1.equals(""))
   		{
   			
   			dispatcher = request.getRequestDispatcher("index.jsp");
   			dispatcher.forward(request, response);
   		}
   		
   		try{
   		Class.forName("com.mysql.cj.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomer?useSSL=false","root","absaini");
	    PreparedStatement pst = con.prepareStatement("Select * from owner where Address2 = ? and Rent1 = ? ");
	    
	    pst.setString(1, Address2);
		pst.setString(2, Rent1);
		
		ResultSet rs = pst.executeQuery();
   		if(rs.next())
   		{
   			
   			dispatcher = request.getRequestDispatcher("search.jsp");
   		}
   		else
   		{
   		
   			dispatcher = request.getRequestDispatcher("index.jsp");   			
   		}
   		dispatcher.forward(request, response);
   		
   	
   		
   	}
   		catch(Exception e) {
   			e.printStackTrace();
   	}
   	 finally {
			try {
				con.close();
			} catch (SQLException e) {			
				e.printStackTrace();
			}
		}
   		

	}

}
