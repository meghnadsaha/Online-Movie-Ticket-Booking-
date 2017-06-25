package com.emovie.contoller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emovie.db.ShowDao;
import com.emovie.model.Show;

/**
 * Servlet implementation class UpdateShow
 */
@WebServlet("/UpdateShow")
public class UpdateShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateShow() {
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
		Show s=new Show();
		s.setShid(request.getParameter("showid"));
		s.setMovienm(request.getParameter("moviename"));
		s.setCity(request.getParameter("city"));
		s.setTheaternm(request.getParameter("theatername"));
		s.setScreen(Integer.parseInt(request.getParameter("screen")));
		s.setSeat(Integer.parseInt(request.getParameter("seat")));
		s.setStrttime(request.getParameter("strttime"));
		s.setEndtime(request.getParameter("endtime"));
		s.setDate(request.getParameter("date"));
		s.setPlatinumrt(Integer.parseInt(request.getParameter("platinumrt")));
		s.setGoldrt(Integer.parseInt(request.getParameter("goldrt")));
		s.setSilverrt(Integer.parseInt(request.getParameter("silverrt")));
		
		int status=ShowDao.update(s);
	                        
	   	        
	        if(status>0)
	        {
	        	response.sendRedirect("updateshow.jsp?msg=Show updated");
	        }
	        else
	        {
	        	response.sendRedirect("updateshow.jsp?msg=Show not founds");
	        }

   }
}