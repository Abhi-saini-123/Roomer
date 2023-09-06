package user_login.registration;

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
 * Servlet implementation class contact_us
 */
@WebServlet("/contact_us")
public class contact_us extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String Name=request.getParameter("name");
		String Email=request.getParameter("email");
	    String Subject=request.getParameter("subject");
		String Message=request.getParameter("message");
		
		RequestDispatcher dispatcher = null;
		Connection con=null;
		
		
		
		if(Name == null || Name.equals("")) {
   			request.setAttribute("status","invalidName");
   			dispatcher = request.getRequestDispatcher("index.jsp");
   			dispatcher.forward(request, response);
   		}
	
		if(Email == null || Email.equals("")) {
   			request.setAttribute("status","invalidEmail");
   			dispatcher = request.getRequestDispatcher("index.jsp");
   			dispatcher.forward(request, response);
   		}
		if(Subject == null || Subject.equals("")) {
   			request.setAttribute("status","invalidSubject");
   			dispatcher = request.getRequestDispatcher("index.jsp");
   			dispatcher.forward(request, response);
   		}
		if(Message == null || Message.equals("")) {
   			request.setAttribute("status","invalidMessage");
   			dispatcher = request.getRequestDispatcher("index.jsp");
   			dispatcher.forward(request, response);
   		}
		
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomer?useSSL=false","root","absaini");
			PreparedStatement pst = con.prepareStatement("insert into messages(Name,Email,Subject,Message) values(?,?,?,?) ");
			
			pst.setString(1, Name);
			pst.setString(2, Email);
			pst.setString(3, Subject);
			pst.setString(4, Message);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("index.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
					
			}else {
				request.setAttribute("status", "failed");
				
			}
			
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("status","ERROR");
   			dispatcher = request.getRequestDispatcher("index.jsp");
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
