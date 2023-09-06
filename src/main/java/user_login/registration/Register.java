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
 * Servlet implementation class Register
 */

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String Fname=request.getParameter("fname");
		String Lname=request.getParameter("lname");
		String Mnumber=request.getParameter("mnumber");
		String Email=request.getParameter("email");
	    String Adharid=request.getParameter("adharid");
		String Birthday=request.getParameter("birthday");
		String InlineRadioOptions=request.getParameter("inlineRadioOptions");
		String Password=request.getParameter("password");
		String Cpassword=request.getParameter("cpassword");
		String Address=request.getParameter("address");
		RequestDispatcher dispatcher = null;
		Connection con=null;
		
		
		
		if(Fname == null || Fname.equals("")) {
   			request.setAttribute("status","invalidName");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
   			dispatcher.forward(request, response);
   		}
		if(Mnumber == null || Mnumber.equals("")) {
   			request.setAttribute("status","invalidNumber");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
   			dispatcher.forward(request, response);
   		}
		if(Email == null || Email.equals("")) {
   			request.setAttribute("status","invalidEmail");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
   			dispatcher.forward(request, response);
   		}
		if(Adharid == null || Adharid.equals("")) {
   			request.setAttribute("status","invalidId");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
   			dispatcher.forward(request, response);
   		}
		if(Birthday == null || Birthday.equals("")) {
   			request.setAttribute("status","invalidBirthday");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
   			dispatcher.forward(request, response);
   		}
		if(Password == null || Password.equals("")) {
   			request.setAttribute("status","invalidPassword");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
   			dispatcher.forward(request, response);
   		}
		if(!Password.equals(Cpassword)){
   			request.setAttribute("status","invalidConfirmPassword");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
   			dispatcher.forward(request, response);	
   		}
		if(Address == null || Address.equals("")) {
   			request.setAttribute("status","invalidAddress");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
   			dispatcher.forward(request, response);
   		}
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomer?useSSL=false","root","absaini");
			PreparedStatement pst = con.prepareStatement("insert into member(Fname,Lname,Mnumber,Email,Adharid,Birthday,InlineRadioOptions,Password,Address) values(?,?,?,?,?,?,?,?,?) ");
			
			pst.setString(1, Fname);
			pst.setString(2, Lname);
			pst.setString(3, Mnumber);
			pst.setString(4, Email);
			pst.setString(5, Adharid);
			pst.setString(6, Birthday);
			pst.setString(7, InlineRadioOptions);
			pst.setString(8, Password);
			pst.setString(9, Address);
			
			int rowCount = pst.executeUpdate();
				
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("loginform.jsp");	
			}else {
				request.setAttribute("status", "failed");
				
			}
			
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("status","ERROR");
   			dispatcher = request.getRequestDispatcher("usersignup.jsp");
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
