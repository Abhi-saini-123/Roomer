package owner_property_details;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update_data
 */
@WebServlet("/Update_data")
public class Update_data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int Owner_id=Integer.parseInt(request.getParameter("ownerid"));
 		String Seat=request.getParameter("seat");
   		String Rent1=request.getParameter("rent1");
   		String Room=request.getParameter("room");
   		String Rent2=request.getParameter("rent2");
   		String Description=request.getParameter("description");
   		
   		RequestDispatcher dispatcher = null;
   		Connection con=null;
   		
   		
   		try{
   		Class.forName("com.mysql.cj.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomer","root","absaini");
	    PreparedStatement pst = con.prepareStatement("Update roomer.owner set Seat=?,Rent1=?,Room=?,Rent2=?,Description=? where Owner_id = ? ");
	   
		pst.setString(1, Seat);
		pst.setString(2, Rent1);
		pst.setString(3, Room);
		pst.setString(4, Rent2);
		pst.setString(5, Description);
		pst.setInt(6, Owner_id);
		
		int status = pst.executeUpdate();
		
		if(status > 0) {
			request.setAttribute("status2", "success");
			
			dispatcher = request.getRequestDispatcher("property-grid.jsp");	
		}else {
			request.setAttribute("status2", "failed");
			
		}
		
		dispatcher.forward(request, response);
		
	} catch (Exception e) {
		e.printStackTrace();
		request.setAttribute("status2","ERROR");
			dispatcher = request.getRequestDispatcher("UpdateData.jsp");
			dispatcher.forward(request, response);
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
