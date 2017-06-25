package com.emovie.contoller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.emovie.db.UserDao;
import com.emovie.model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		User t=new User();
		t.setEmail(request.getParameter("email"));
		t.setPassword(request.getParameter("password"));
		String type=UserDao.validate(t);
		HttpSession ses=request.getSession();
		if(type.equals("user"))
		{
			ses.setAttribute("user",request.getParameter("email"));
			response.sendRedirect("user.jsp");
	    }
	 	else if(type.equals("admin"))
		{
			ses.setAttribute("admin",request.getParameter("email"));
			response.sendRedirect("admin.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp?msg=login fails");
		}
	}

}
