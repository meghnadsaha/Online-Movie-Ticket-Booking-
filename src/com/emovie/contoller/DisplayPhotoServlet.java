package com.emovie.contoller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emovie.db.Provider;


import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 * Servlet implementation class DisplayPhotoServlet
 */
@WebServlet("/DisplayPhotoServlet")
public class DisplayPhotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayPhotoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	        
    	        try {
    	            Connection con = Provider.getConnection();
    	            PreparedStatement ps = con.prepareStatement("select movieimg from addmovie where movieid = ?");
    	            String id = request.getParameter("id");
    	            ps.setString(1,id);
    	            ResultSet rs = ps.executeQuery();
    	            rs.next();
    	            Blob  b = rs.getBlob("movieimg");
    	            response.setContentType("image/jpeg");
    	            response.setContentLength( (int) b.length());
    	            InputStream is = b.getBinaryStream();
    	            OutputStream os = response.getOutputStream();
    	            byte buf[] = new byte[(int) b.length()];
    	            buf=b.getBytes(1, (int) b.length());
    	            os.write(buf);
    	            os.close();
    	        }
    	        catch(Exception ex) {
    	             System.out.println(ex.getMessage());
    	        }
    	    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
	}

}
