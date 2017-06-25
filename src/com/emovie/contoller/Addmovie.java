package com.emovie.contoller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
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
 * Servlet implementation class Addmovie
 */
@WebServlet("/Addmovie")
public class Addmovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addmovie() {
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
	           
	            PreparedStatement ps = con.prepareStatement("insert into addmovie values(?,?,?,?,?,?,?,?,?)");
	            ps.setString(1,movieid);
	            ps.setString(2, moviename);
	            ps.setBinaryStream(3, file.getInputStream(), (int) file.getSize());
	            ps.setString(4, producer);
	            ps.setString(5,director);
	            ps.setString(6,cast);
	            ps.setString(7,duration);
	            ps.setString(8,story);
	            ps.setString(9,type);
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
	        	response.sendRedirect("addmovie.jsp?msg=movie added");
	        }
	        else
	        {
	        	response.sendRedirect("addmovie.jsp?msg=you already added this movie");
	        }
	}

}





