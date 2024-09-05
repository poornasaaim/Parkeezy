package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dbconn.dbconn;


/**
 * Servlet implementation class Donorreg
 */
@WebServlet("/Donorreg")
public class Donorreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Donorreg() {
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
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		String number = req.getParameter("number");
		String pass = req.getParameter("pass");
	
		int z= 0;
		try {
		
		con= dbconn.create();
		PreparedStatement ps = con.prepareStatement("INSERT INTO `parkingslot`.`user` VALUES(id,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, number);
		ps.setString(4, pass);
		
		ps.setString(5, " ");
		
		
		int row=ps.executeUpdate();
		z=1;
		
		if (z==row) {
		resp.sendRedirect("userlogin.jsp");
		}else{
		
			resp.sendRedirect("error.jsp?");
		
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		}
	}
