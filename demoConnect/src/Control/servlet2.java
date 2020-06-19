package Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Types;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.glass.ui.CommonDialogs.Type;

@WebServlet("/servlet2")
public class servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	String url="jdbc:mysql://localhost:3306/register";
	String user="root";
	String pass="";
	Connection con=null;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String mobile=request.getParameter("mobile");
		System.out.println(mobile);
		
		String q1=request.getParameter("q1");
		String q2=request.getParameter("q2");
		String q3=request.getParameter("q3");
		String q4=request.getParameter("q4");
		String q5=request.getParameter("q5");
		String q6=request.getParameter("q6");
		String q7=request.getParameter("q7");
		String q8=request.getParameter("q8");
		String q9=request.getParameter("q9");
		String q10=request.getParameter("q10");
		
		int yes=0,no=0,confirm=0;
		
		String q[]= {q1,q2,q3,q4,q5,q6,q7,q8,q9,q10};
		String obj1="yes";
		String obj2="no";
		String obj3="confirm";
		
		for(int i=0;i<10;i++) {
			if(q[i].equals(obj1)) {	
				yes++;
			}
			if(q[i].equals(obj2)) {
				no++;
			}
			if(q[i].equals(obj3)) {
				confirm++;
			}
		}
		
		System.out.println(yes);
		System.out.println(no);
		
		request.setAttribute("yes", yes);
		request.setAttribute("no", no);
		request.setAttribute("confirm", confirm);
		
		
		
			try{
				
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection(url, user, pass);
				
				  	
	            PreparedStatement st = con .prepareStatement("update info set result=? where mobile=?"); 
	           
	            
	            if(yes>6) {
		        st.setString(1, "High Risk");
		        st.setString(2, mobile);
		        
		        st.executeUpdate();
	            }
	            
	            if((yes>3)&&(yes<7)) {
	            	st.setString(1, "Medium Risk");
	 		        st.setString(2, mobile);
	 		        
	 		        st.executeUpdate();
	            	
	            }
	            
	            if(yes<4) {
	            	
	            	st.setString(1, "Low Risk");
	 		        st.setString(2, mobile);
	 		        
	 		        st.executeUpdate();
	            	
	            }
	            
	            
		        st.executeUpdate();
			
		        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
				rd.forward(request, response);
			
			
			
			}
			
			catch(Exception e) {
				
				e.printStackTrace();
				
			}
		
		
		}

	

}
