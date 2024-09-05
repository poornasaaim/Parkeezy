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
 * Servlet implementation class Application
 */
@WebServlet("/Application")
public class Application extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Application() {
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

		String name = req.getParameter("name");
		String slot1 = req.getParameter("slot1");
		String slot2 = req.getParameter("slot2");
		String slot3 = req.getParameter("slot3");	
		String slot4 = req.getParameter("slot4");
		String slot5 = req.getParameter("slot5");
		String address = req.getParameter("address");
		String location = req.getParameter("location");
		String pin = req.getParameter("pin");
		String count = req.getParameter("count");
		String rate = req.getParameter("rate");
		/*HttpSession session = req.getSession();
		session.setAttribute("emaill", email);*/
	

		int z= 0;
		try {
		
		Connection con= dbconn.create();
		PreparedStatement ps = con.prepareStatement("INSERT INTO parkingslot. application VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		
		ps.setString(2, slot1);
		ps.setString(3, slot2);
		ps.setString(4, slot3);
		ps.setString(5, slot4);
		ps.setString(6, slot5);
		ps.setString(7, location);
		ps.setString(8, address);
		ps.setString(9, pin);
		
		ps.setString(10, "request");
		ps.setString(11, rate);
		ps.setString(12, " ");
		ps.setString(13, " ");
		ps.setString(14, count);
		ps.setString(15, "Available");
		
		ps.setString(16, "Available");
		ps.setString(17, "Available");
		ps.setString(18, "Available");
		ps.setString(19, "Available");
		
		int row=ps.executeUpdate();
		z=1;
		
		if (z==row) {
		resp.sendRedirect("application.jsp");
		}else{
		
			resp.sendRedirect("error.jsp");
		
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	
	
	
	
	}



	
	
	
	
	
	
	
	
	
	
	

}
