package user_login.registration;
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
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
   	{
   		String Email=request.getParameter("email");
   		String Password=request.getParameter("password");
   		HttpSession session = request.getSession();
   		RequestDispatcher dispatcher = null;
   		Connection con=null;
   		
   		if(Email == null || Email.equals(""))
   		{
   			request.setAttribute("status","invalidEmail");
   			dispatcher = request.getRequestDispatcher("loginform.jsp");
   			dispatcher.forward(request, response);
   		}
   		if(Password == null || Password.equals(""))
   		{
   			request.setAttribute("status","invalidPassword");
   			dispatcher = request.getRequestDispatcher("loginform.jsp");
   			dispatcher.forward(request, response);
   		}
   		
   		try{
   		Class.forName("com.mysql.cj.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomer?useSSL=false","root","absaini");
	    PreparedStatement pst = con.prepareStatement("Select * from member where Email = ? and Password = ? ");
	    
	    pst.setString(1, Email);
		pst.setString(2, Password);
		
		ResultSet rs = pst.executeQuery();
   		if(rs.next())
   		{
   			session.setAttribute("name", rs.getString("Fname"));
   			dispatcher = request.getRequestDispatcher("index.jsp");
   		}
   		else
   		{
   			request.setAttribute("status", "failed");
   			dispatcher = request.getRequestDispatcher("loginform.jsp");   			
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
