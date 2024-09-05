package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.pollingofficerregBean;
import Dbconn.dbconn;

import imple.Imple;

/**
 * Servlet implementation class pollingofficerlogin
 */
@WebServlet("/pollingofficerlogin")
public class pollingofficerlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pollingofficerlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con;
		String email = req.getParameter("username");
		
		
		String ps = req.getParameter("password");
		
		HttpSession session= req.getSession();
		int z=0;
		
		try {
		
			con= dbconn.create();
		Statement st = con.createStatement();
			
			ResultSet rs= st.executeQuery("SELECT * FROM parkingslot.newuserreg WHERE email= '"+email+"'and pass1= '"+ps+"'" );
		
		while(rs.next())
		{	
		z=1;
		
		rs.getString(2);
		
		
		

		
		
		}
		if(z==0) {
		resp.sendRedirect("error.jsp");
		
		}else{
		
			resp.sendRedirect("mainpage.jsp");
			
		}
		
	
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}
