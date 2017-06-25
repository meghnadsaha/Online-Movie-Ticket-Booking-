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

/**
 * Servlet implementation class Updatemovie
 */
@WebServlet("/Updatemovie")
public class Updatemovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatemovie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        int status=0;
	        try {
	            // Apache Commons-Fileupload library classes
	            DiskFileItemFactory factory = new DiskFileItemFactory();
	            ServletFileUpload sfu  = new ServletFileUpload(factory);

	            if (! ServletFileUpload.isMultipartContent(request)) {
	                System.out.println("sorry. No file uploaded");
	                return;
	            }

	            // parse request
	            List items = sfu.parseRequest(request);
	            
	            FileItem  mid = (FileItem) items.get(0);
	            String movieid =  mid.getString();
	            
	            FileItem  mnm = (FileItem) items.get(1);
	            String moviename =  mnm.getString();
	            
	            FileItem file = (FileItem) items.get(2);
	            
	                        
	            FileItem prod = (FileItem) items.get(3);
	            String   producer =  prod.getString();
	            
	            FileItem dirc = (FileItem) items.get(4);
	            String   director =dirc.getString();
	            
	            FileItem cst = (FileItem) items.get(5);
	            String   cast = cst.getString();
	            
	            FileItem durtn= (FileItem) items.get(6);
	            String duration=durtn.getString();
	            
	            FileItem stry = (FileItem) items.get(7);
	            String  story =stry.getString();
	            
	            FileItem typ= (FileItem) items.get(8);
	            String  type =typ.getString();
	            

	            // get uploaded file
	            
	                        
	            // Connect to Oracle
	            Connection con = Provider.getConnection();
	            con.setAutoCommit(false);
	           
	            PreparedStatement ps = con.prepareStatement("update  addmovie set moviename=?,movieimg=?,producer=?,director=?,cast=?,duration=?,story=?,type=? where movieid=?");
	            
	            ps.setString(1, moviename);
	            ps.setBinaryStream(2, file.getInputStream(), (int) file.getSize());
	            ps.setString(3, producer);
	            ps.setString(4,director);
	            ps.setString(5,cast);
	            ps.setString(6,duration);
	            ps.setString(7,story);
	            ps.setString(8,type);
	            ps.setString(9, movieid);
	            status=ps.executeUpdate();
	            con.commit();
	            con.close();
	            System.out.println("status="+status);
	           
	        } 
	        catch(Exception ex) {
	        	ex.printStackTrace();
	            out.println( "Error --> " + ex.getMessage());
	        }
	        if(status>0)
	        {
	        	response.sendRedirect("updatemovie.jsp?msg=movie updated");
	        }
	        else
	        {
	        	response.sendRedirect("updatemovie.jsp?msg=movie not founds");
	        }
	}

}
