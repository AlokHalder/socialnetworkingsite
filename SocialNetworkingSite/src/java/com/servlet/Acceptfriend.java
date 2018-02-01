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
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Abc
 */
public class Acceptfriend extends HttpServlet {

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
        HttpSession session = request.getSession();
        String username=(String)session.getAttribute("username");
        //String username = request.getParameter("new");
        String friendid = request.getParameter("new");
        out.println(username+friendid);
        session.setAttribute("friend",friendid);
        RequestDispatcher rd = null;
        try {
            Connection con = DBconnection.createCon();
            PreparedStatement ps = con.prepareStatement("insert into friend_list values(?,?)");
           
            //ResultSet rs = ps.executeQuery();
            ps.setString(1, username);
            ps.setString(2, friendid);
            int rs = ps.executeUpdate();
          
            PreparedStatement ps1 = con.prepareStatement("insert into friend_list values(?,?)");
           
           // ResultSet rs1 = ps1.executeQuery();
            ps1.setString(1, friendid);
            ps1.setString(2, username);
            int rs1 = ps1.executeUpdate();
             //if((rs > 0) && (rs1 > 0))
             //{
           /* PreparedStatement ps2 = con.prepareStatement("delete from friend_request where user_id=? and friend_request_id=?");
           
            
         
            ps2.setString(1, username);
            ps2.setString(2, friendid);
            int rs2 = ps2.executeUpdate();
             
            if ((rs > 0) && (rs1 > 0) && (rs2 !=0)) {
                rd = request.getRequestDispatcher("profile.jsp");*/
            if(rs1==1 && rs==1)
            {
                rd=request.getRequestDispatcher("TestServ");
                rd.forward(request, response);
                con.close();
           // }
            }
        } catch (SQLException e) {
            e.printStackTrace();
           out.println(e);
    }

    }   // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
