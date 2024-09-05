package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.pollingofficerregBean;
import embed.embedd;
import imple.Imple;

/**
 * Servlet implementation class pollingofficerregistration
 */
@WebServlet("/pollingofficerregistration")
public class pollingofficerregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pollingofficerregistration() {
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
		
		String name=request.getParameter("name");
		
		String username=request.getParameter("username");
        String email=request.getParameter("email");
		
		String password1=request.getParameter("password1");
		String password2=request.getParameter("password2");
		String vehicle=request.getParameter("vehicle");
		String number=request.getParameter("number");
		
		
		System.out.println(password2);
		
		/*String id=request.getParameter("id");
		String thumb=request.getParameter("thumb");
		System.out.println(thumb);*/
		
		pollingofficerregBean ob=new pollingofficerregBean();
		ob.setName(name);
		ob.setMobile(username);
		ob.setEmail(email);
		ob.setPassword1(password1);
		ob.setPassword2(password2);
		/*ob.setId(id);
		ob.setThumb(thumb);
		*/
		ob.setType(vehicle);
		ob.setType(number);
		
		
		
		Imple ab=new Imple();
		int a=ab.polofficerreg(ob);
		if(a==1) {
			if(embedd.toclose()) {
			response.sendRedirect("pollingofficerlogin.jsp");
		}}
		else {
			response.sendRedirect("error.jsp");
		}
	}

}
