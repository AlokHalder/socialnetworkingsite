/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Devlina Datta
 */
public class Pictureupload extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private boolean isMultipart;
    private String filePath;
    String fileName = null;
    private File file;
    HttpSession hs = null;
    String fullpath;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         HttpSession hs = request.getSession(true);
        //hs = request.getSession();
        hs.setAttribute("uid", "pictures");
        String uid = (String) hs.getAttribute("username");
        String s1 = null;

        // Check that we have a file upload request
        isMultipart = ServletFileUpload.isMultipartContent(request);
        out.println(uid);
        //String user_id = (String) hs.getAttribute("userId");
        if (!isMultipart) {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet upload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<p>No file uploaded</p>");
            out.println("</body>");
            out.println("</html>");
            return;
        }
        DiskFileItemFactory factory = new DiskFileItemFactory();

        ServletFileUpload upload = new ServletFileUpload(factory);
        
        try {
            /* TODO output your page here. You may use following sample code. */
                    /* TODO output your page here. You may use following sample code. */


            Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "MANAGER");
            if (con == null) {
                System.out.println("not connected");

            } else {
                PreparedStatement pstmt = null;
                out.println("connection created...");


                pstmt = con.prepareStatement("update profile_pic set picture_path=? where user_id=?");
                //pstmt = con.prepareStatement("insert into profile_pic values(?,?");
                //pstmt.setString(1, uid);



                List fileItems = upload.parseRequest(request);


                Iterator i = fileItems.iterator();

                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet upload</title>");
                out.println("</head>");
                out.println("<body>");
                //   filePath = request.getServletContext().getRealPath("/") + uid;//(String) hs.getAttribute("userId");
                //out.println(filePath);
                filePath = "D:\\SocialNetworkingSite\\web\\profilepic";
                File foldr = new File(filePath);
                if (!foldr.exists()) {
                    foldr.mkdirs();
                }
                while (i.hasNext()) {
                    FileItem fi = (FileItem) i.next();
                    String pn = "";
                    if (fi.isFormField()) {
                        if (fi.getFieldName().equals("pname")) {
                            pn = fi.getString();
                        }
                    } else if (!fi.isFormField()) {
                        // Get the uploaded file parameters
                        fileName = fi.getName();
                        if (fileName.lastIndexOf("\\") >= 0) {
                            file = new File(foldr,
                                    fileName.substring(fileName.lastIndexOf("\\")));
                            out.println(fileName.substring(fileName.lastIndexOf("\\")));
                            s1 = "profilepic/" + fileName.substring(fileName.lastIndexOf("\\"));
                            pstmt.setString(1, s1);
                            pstmt.setString(2, uid);

                        } else {
                            file = new File(foldr,
                                    fileName.substring(fileName.lastIndexOf("\\") + 1));
                            fullpath = filePath + "\\" + fileName;
                            s1 = "profilepic/" + fileName.substring(fileName.lastIndexOf("\\") + 1);
                            pstmt.setString(1, s1);
                            pstmt.setString(2, uid);
                        }
                        fi.write(file);

                        out.println("UPLOADED FILENAME: " + fullpath + "<br>");
                    }
                }
                out.println("</body>");
                out.println("</html>");
                int t1 = pstmt.executeUpdate();
                if(t1>0)
                {
             RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
             rd.forward(request, response);
         }    
            con.close();
            }
        } catch(Exception e)
        {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
