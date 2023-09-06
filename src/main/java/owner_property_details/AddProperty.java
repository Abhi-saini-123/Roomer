package owner_property_details;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddProperty
 */

@MultipartConfig
@WebServlet("/AddProperty")
public class AddProperty extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   		
   		Part file1=request.getPart("image1");
   		Part file2=request.getPart("image2");
   		Part file3=request.getPart("image3");
   		
   		String Adharid=request.getParameter("adharid");
   		String Address2=request.getParameter("address2");
		
		String Image1=file1.getSubmittedFileName();
		String Image2=file2.getSubmittedFileName();
		String Image3=file3.getSubmittedFileName();
		
		String Seat=request.getParameter("seat");
		String Rent1=request.getParameter("rent1");
	    String Room=request.getParameter("room");
	    String Rent2=request.getParameter("rent2");
	    String Description=request.getParameter("description");
	    
	    String uploadPath1="C:/Eclipse/Workspace/newproject/src/main/webapp/images/"+Image1;
	    String uploadPath2="C:/Eclipse/Workspace/newproject/src/main/webapp/images/"+Image2;
	    String uploadPath3="C:/Eclipse/Workspace/newproject/src/main/webapp/images/"+Image3;
	    
	    
		try {
		FileOutputStream fos1=new FileOutputStream(uploadPath1);
		InputStream is1=file1.getInputStream();
		
		byte[] data1=new byte[is1.available()];
		is1.read(data1);
		fos1.write(data1);
		fos1.close();
		
		FileOutputStream fos2=new FileOutputStream(uploadPath2);
		InputStream is2=file2.getInputStream();

		byte[] data2=new byte[is2.available()];
		is2.read(data2);
		fos2.write(data2);
		fos2.close();
		
		FileOutputStream fos3=new FileOutputStream(uploadPath3);
		InputStream is3=file3.getInputStream();

		byte[] data3=new byte[is3.available()];
		is3.read(data3);
		fos3.write(data3);
		fos3.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = null;
		Connection con=null;
		HttpSession session = request.getSession();
		
		
		 try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomer?useSSL=false","root","absaini");
				PreparedStatement pst = con.prepareStatement("insert into owner(Adharid,Address2,Image1,Image2,Image3,Seat,Rent1,Room,Rent2,Description) values(?,?,?,?,?,?,?,?,?,?) ");
				PreparedStatement pst1 = con.prepareStatement("Select * from owner ");
			   
				 pst.setString(1, Adharid);
				 pst.setString(2, Address2);
				 pst.setString(3, Image1);
				 pst.setString(4, Image2);
				 pst.setString(5, Image3);
				 pst.setString(6, Seat);
				 pst.setString(7, Rent1);
				 pst.setString(8, Room);
				 pst.setString(9, Rent2);
				 pst.setString(10, Description);
				
				
				int rowCount = pst.executeUpdate();	
				dispatcher = request.getRequestDispatcher("Ownerform.jsp");
				if(rowCount > 0) {
					request.setAttribute("status1", "success");
					
				}else {
					request.setAttribute("status1", "failed");
		
				}
				
				ResultSet rs = pst1.executeQuery();
				while(rs.next()) {
					session.setAttribute("owner", rs.getInt("Owner_id"));
				}
	
				dispatcher.forward(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("status1","ERROR");
	   			dispatcher = request.getRequestDispatcher("Ownerform.jsp");
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
