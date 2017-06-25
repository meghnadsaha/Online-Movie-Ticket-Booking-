package com.emovie.contoller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.emovie.db.Provider;
import com.emovie.db.TheaterDao;
import com.emovie.db.UserDao;
import com.emovie.model.Theater;
import com.emovie.model.User;

/**
 * Servlet implementation class AddTheater
 */
@WebServlet("/UpdateTheater")
public class UpdateTheater extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTheater() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param  
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		Theater t=new Theater();
		t.setThid(request.getParameter("theaterid"));
		t.setThname(request.getParameter("theatername"));
		t.setCity(request.getParameter("city"));
		t.setAddress(request.getParameter("address"));
		t.setPincode(Integer.parseInt(request.getParameter("pincode")));
		t.setNos(Integer.parseInt(request.getParameter("screen")));
		t.setSeat(Integer.parseInt(request.getParameter("seat")));
		int status=TheaterDao.update(t);
	                        
	   	        
	        if(status>0)
	        {
	        	response.sendRedirect("updatetheater.jsp?msg=theater updated");
	        }
	        else
	        {
	        	response.sendRedirect("updatetheater.jsp?msg=theater not founds");
	        }

   }
}
