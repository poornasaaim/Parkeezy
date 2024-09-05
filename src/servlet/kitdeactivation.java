package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import embed.embedd;
import imple.Imple;

/**
 * Servlet implementation class kitdeactivation
 */
@WebServlet("/kitdeactivation")
public class kitdeactivation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kitdeactivation() {
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
		
		String id=request.getParameter("id");
		String thumb=request.getParameter("thumb");
		
		
		Imple ab=new Imple();
		boolean a=ab.activation(id,thumb);
		
		if(a==true) {
		//sendtoard.go();
			embedd.deactivate();
		if(embedd.toclose()) {
		response.sendRedirect("mainpage.jsp?valid");
		}	}else{ 
			response.sendRedirect("error.jsp?invalid");
		}
	}
	}


