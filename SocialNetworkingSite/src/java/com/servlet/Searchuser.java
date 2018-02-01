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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Devlina Datta
 */
@WebServlet(name = "searchuser", urlPatterns = {"/searchuser"})
public class Searchuser extends HttpServlet {

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

        String name = request.getParameter("username");
        out.println(name);
        DBconnection dbCon = new DBconnection();
        PreparedStatement pstmt = null;
        String fname = null;
        String lname = null;
        String userid = null;
        try {
            Connection con = dbCon.createCon();

            if (con == null) {
                out.println("Connection not created");
            } else {
                out.println("connection created..."+ name);
                String q1 = "select user_id,first_name,last_name from user_details where first_name like'"+name+"%'";
                /*out.println("------"+q1);*/
                pstmt = con.prepareStatement(q1);
               
               /* pstmt.setString(1, name);*/

                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
                    userid = rs.getString("user_id");
                    fname = rs.getString("first_name");
                    lname = rs.getString("last_name");
                    /*out.println(fname + " " + lname );*/
                    out.println("<h1><a href=profilenotfriend.jsp?unknown="+userid+">"+fname+" "+lname+"</a>");
               }
                           }
            con.close();
        }
         catch (Exception e) {
            out.println(e);
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
