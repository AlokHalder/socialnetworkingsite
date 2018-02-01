/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.Connection.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Devlina Datta
 */
@WebServlet(name = "Home", urlPatterns = {"/Home"})
public class Home extends HttpServlet {

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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        RequestDispatcher rd=null;
        //ServletContext sc=getServletContext();
        HttpSession ses=request.getSession(true);
        String username = request.getParameter("n1");
        String password = request.getParameter("n2");
        PreparedStatement pstmt = null;
        out.println(username+password);
         DBconnection dbCon=new DBconnection();
        try {
            /* TODO output your page here. You may use following sample code. */
            

           // Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = dbCon.createCon();

           // Connection con = DriverManager.getConnection("jdbc:oracle:thin:@10.10.200.5:1521:orcl1","fsp13","fsp13");
             if(con==null)
             {
                 System.out.println("Connection not created");
             }
             else
             {
                out.println("connection created...");
           String q1 = "select * from log_details where user_id=? and password=?";
             pstmt=con.prepareStatement(q1);
             
             pstmt.setString(1,username);
             pstmt.setString(2,password);
             ResultSet rs=pstmt.executeQuery();
             if(rs.next())
             {
             ses.setAttribute("username",username);
             request.setAttribute("password", password);
             rd=request.getRequestDispatcher("profile.jsp");
             }
             else
             {
                 
                rd=request.getRequestDispatcher("home.jsp");
             }
             rd.forward(request, response);
            con.close();
             }
        }
             catch (Exception e)
        {
            System.out.println(e);
        }
        finally {            
            out.close();
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
