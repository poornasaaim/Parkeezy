package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dbconn.dbconn;
import embed.embedd;

/**
 * Servlet implementation class payment
 */
@WebServlet("/payment")
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String id=request.getParameter("ids");
		String time=request.getParameter("time");
		String pname=request.getParameter("pname");
		String location=request.getParameter("location");
		
		String address=request.getParameter("address");
		String pin=request.getParameter("pin");
		
		String slot=request.getParameter("slot");
		String cost=request.getParameter("cost");
		String cardnumber=request.getParameter("card-number");
		String expirymonth=request.getParameter("expiry-month");
		String expiryyear=request.getParameter("expiry-year");
		String cvv=request.getParameter("cvv");
		String username=request.getParameter("username");
		HttpSession sess= request.getSession();
		String mail=sess.getAttribute("username").toString();
		String num=sess.getAttribute("num").toString();
		
		
		Random r1=new Random(); 

		 String key2="ABCDEFGH123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 
		 
		
		
		int z= 0;
		try {
		Connection con;
		con= dbconn.create();
		PreparedStatement ps = con.prepareStatement("INSERT INTO `parkingslot`.`payment` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, id);
		ps.setString(2, time);
		ps.setString(3, pname);
		ps.setString(4, location);
		
		ps.setString(5, address);
		
		ps.setString(6, pin);
		ps.setString(7, slot);
		ps.setString(8, cost);
		ps.setString(9, cardnumber);
		
		ps.setString(10,expirymonth);
		ps.setString(11, expiryyear);
		ps.setString(12, cvv);
		
		ps.setString(13, username);
		ps.setString(14, t6);
		ps.setString(15, num);
		ps.setString(16,mail);
		ps.setString(17,"");
		ps.setString(18,"");
		ps.setString(19,"");
		
		
		String number="";
		
		con= dbconn.create();
		Statement st = con.createStatement();
			
			ResultSet rs= st.executeQuery("SELECT * FROM parkingslot.user WHERE email='"+mail+"'");
		
		while(rs.next())
		{	
		
		number=rs.getString(4);
		
		}
		

		/*embedd.send("@"+number+"#$"+t6+"#");*/
		
		
		int row=ps.executeUpdate();
		z=1;
		
		if (z==row) {
		if(num.equals("1")) {
			st.executeUpdate("UPDATE parkingslot.application a SET slot1status='Booked' where id='"+id+"' ");
		}
		else if(num.equals("2")) {
			st.executeUpdate("UPDATE parkingslot.application a SET slot2status='Booked' where id='"+id+"' ");
		}
		else if(num.equals("3")) {
			st.executeUpdate("UPDATE parkingslot.application a SET slot3status='Booked' where id='"+id+"' ");
		}
		else if(num.equals("4")) {
			st.executeUpdate("UPDATE parkingslot.application a SET slot4status='Booked' where id='"+id+"' ");
		}
		else {
			st.executeUpdate("UPDATE parkingslot.application a SET slot5status='Booked' where id='"+id+"' ");
		}
			
		embedd.send(number);
		
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		embedd.send(t6);
		response.sendRedirect("usermainpage.jsp");
		}else{
		
			response.sendRedirect("error.jsp?");
		
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		
	}

}
