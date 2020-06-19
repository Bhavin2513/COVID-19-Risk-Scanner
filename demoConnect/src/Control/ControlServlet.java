package Control;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/ControlServlet")
public class ControlServlet extends HttpServlet {
	
	

	private static final long serialVersionUID = 1L;
		String url="jdbc:mysql://localhost:3306/register";
		String user="root";
		String pass="";
		Connection con=null;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();  
		
		String name=request.getParameter("name");  
		String city=request.getParameter("city");
		int pincode=Integer.parseInt(request.getParameter("pincode"));
	    String mobile=request.getParameter("mobile");
	    String sex = request.getParameter("sex");
	    
	    request.setAttribute("mobile", mobile);
	    
	   
		
		try {
			 
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			
			  	
            PreparedStatement st = con .prepareStatement("insert into info(name,city,pincode,mobile,sex)"+ " values(?,?,?,?,?)"); 
           
	        st.setString(1, name);
	        st.setString(2, city);
	        st.setInt(3,pincode); 
	        st.setString(4, mobile);
	        st.setString(5,sex);
	        
	        st.executeUpdate();

	       RequestDispatcher rd = request.getRequestDispatcher("test.jsp");
	       rd.forward(request, response);
	        
	       
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		finally {
			try {
				con.close();
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		
		
	}

}
