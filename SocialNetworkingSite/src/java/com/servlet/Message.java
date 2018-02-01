/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.Connection.DBconnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author Devlina Datta
 */
public class Message extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out=response.getWriter();
            response.setContentType("text/html");
        HttpSession hs = request.getSession();
        String userId = (String) hs.getAttribute("username");
        String touserId = request.getParameter("toUserId");
        String msgData = request.getParameter("msgData");
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        Date date = new Date();
        String createdon = (dateFormat.format(date));
        RequestDispatcher rd = null;
       // out.println("===============>"+createdon);

        try {
            Connection con = DBconnection.createCon();
            PreparedStatement ps = con.prepareStatement("select max(msg_id) from message_record");
            ResultSet rs = ps.executeQuery();
            int lastMsgId = 0;
            if (rs.next()) {
                lastMsgId = (rs.getInt(1) + 1);
            }
            // out.println("##"+msgData+"###=="+userId+"============="+touserId+">"+lastMsgId);
            ps = con.prepareStatement("insert into message_record (user_id ,msg_id ,msg_date ,to_user ,msg_content ,flag )values(?,?,?,?,?,?)");
            ps.setString(1, userId);
            ps.setInt(2, lastMsgId);
            ps.setString(3, createdon);
            ps.setString(4, touserId);
            ps.setString(5, msgData);
            ps.setString(6, "0");
            int row = ps.executeUpdate();
             //out.println("===============>"+lastMsgId);
            if(row==1)
            {
                //out.println(row+"message sent");
                rd = request.getRequestDispatcher("message.jsp");
                rd.forward(request, response);
                con.close();
            }  
            else
                out.println("no message sent");
        } catch (SQLException e) {
            e.printStackTrace();
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
