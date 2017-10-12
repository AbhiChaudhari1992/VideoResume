package com.jobseeker;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class login
 */
@WebServlet("/signUpJobSeeker")

public class signUpJobSeeker extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private static final long serialVersionUID = 1L;
	public String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	public String DB_URL="jdbc:mysql://localhost:3306/mydb";
	public String USER = "root";
	public String PASS = "root";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signUpJobSeeker(){
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		 ResultSet rs = null;
		 Statement stmt = null;
		 Connection conn = null;
		try {
	         Class.forName("com.mysql.jdbc.Driver");
	         conn =  DriverManager.getConnection(DB_URL, USER, PASS);
	         stmt =  conn.createStatement();
	         String sql;
	         System.out.println("hello");
	         System.out.println();
	         sql = "select * from jobseeker where username='"+request.getParameter("username")+"'";
	         System.out.println(sql);
	        rs = stmt.executeQuery(sql);
	        System.out.println(rs.getString("username"));
	        System.out.println("we are here before insert and userexists");
	      /*  System.out.println(rs);
	        System.out.println(rs.first());*/
	        //System.out.println(rs.getString(0));
	         
	      } catch(SQLException se) {
	         se.printStackTrace();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
		try {
			if(rs.next()) {
				System.out.println("User already exists. we are here");
				 request.getRequestDispatcher("userexists.jsp").include(request, response);
			}else
			{
				System.out.println("user not exists");
				 Class.forName("com.mysql.jdbc.Driver");
		         conn = DriverManager.getConnection(DB_URL, USER, PASS);
		       //  stmt = conn.createStatement();
		         
		         
		         String sql1 = "insert into jobseeker(fname, lname, email, phone, username,address,password) values (?,?,?,?,?,?,?)";
		         PreparedStatement st = (PreparedStatement) conn.prepareStatement(sql1);
		         st.setString(1, request.getParameter("firstName"));
		         st.setString(2, request.getParameter("lastName"));
		         st.setString(3, request.getParameter("personalEmail"));
		         st.setString(4, request.getParameter("phoneNumber"));
		         st.setString(5, request.getParameter("username"));
		         st.setString(6, request.getParameter("address"));
		         st.setString(7, request.getParameter("lastName"));
		         System.out.println("Before insert");
		         st.executeUpdate();
		         System.out.println("After insert");
		         request.getRequestDispatcher("registeredsuccess.jsp").include(request, response);
			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				stmt.close();
		         conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
