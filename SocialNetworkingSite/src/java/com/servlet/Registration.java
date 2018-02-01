/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.utility.IPAddress;
import com.Connection.*;
import javax.servlet.RequestDispatcher;



/**
 *
 * @author Devlina Datta
 */
public class Registration extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String fname = request.getParameter("n1");
        String lname = request.getParameter("n2");
        String email = request.getParameter("n3");
        String confirmpass = request.getParameter("n5");
        
        
        
        
        String password = request.getParameter("n4");
        String sq = request.getParameter("sq");
        String ans = request.getParameter("ans");
        String gender = request.getParameter("n6");
        //String dob = request.getParameter("dob");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String dob=day+"-"+month+"-"+year;
        String userid = email;
        String ipaddress=null;
 
       DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       
        Date date = new Date();
       String createdon = (dateFormat.format(date));
       

       
       IPAddress ip = new IPAddress();
        ipaddress =ip.getInterfaces();
      //  System.out.println(ipaddress);
        
        /*To match the email address*/
      /*  if(email!=renteremail)
        {
        <SCRIPT language="JavaScript"alert("Email id is not matching")</SCRIPT>;

        }*/
       
        DBconnection dbCon=new DBconnection();
   
        try {
            /* TODO output your page here. You may use following sample code. */


            //Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
           Connection con = dbCon.createCon();
             //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.10.200.5:1521:orcl1","fsp13","fsp13");
             if(con==null)
             {
                 System.out.println("not connected");
                 
             }
             else{
            PreparedStatement pstmt = null;
           //Statement st=con.createStatement();
       //out.println("connection created...");
          
//String q1 = "insert into log_details values(?,?,?,?,?)";
            pstmt = con.prepareStatement("insert into log_details values(?,?,?,?,?)");
            pstmt.setString(1, userid);
            pstmt.setString(2, password);
            pstmt.setString(3,createdon);
            pstmt.setString(4, sq);
            pstmt.setString(5, ans);
            int t1 = pstmt.executeUpdate();
            // Eta Thik   ==========
//String sql="insert into log_details2 (user_id, password,acc_created_on,sec_ques,sec_ans)values('"+userid+"','"+password+"','"+createdon+"','"+sq+"','"+ans+"')";
//st.executeUpdate(sql);  
   ///==Eta Thik
PreparedStatement pstmt1 = null;

        // String q2 = "insert into login_info values(?,?,?)";
            pstmt1 = con.prepareStatement("insert into login_info values(?,?,?)");
            pstmt1.setString(1, userid);
            pstmt1.setString(2, ipaddress);
            pstmt1.setString(3, createdon);
            int t2 = pstmt1.executeUpdate();
          PreparedStatement pstmt2 = null;

        //String q3 = "insert into user_details(user_id,first_name,last_name ,bday,sex,ph_no,email,address,lives_in)values(?,?,?,?,?,?,?,?)";
            pstmt2 = con.prepareStatement("insert into user_details values(?,?,?,?,?,?,?,?,?)");
            pstmt2.setString(1, userid);
            pstmt2.setString(2, fname);
            pstmt2.setString(3, lname);
            pstmt2.setString(4, dob);
            pstmt2.setString(5, gender);
            pstmt2.setInt(6, 0);
            pstmt2.setString(7, email);
            pstmt2.setString(8, null);
            pstmt2.setString(9, null);
            int t3 = pstmt2.executeUpdate();
PreparedStatement pstmt3= null;

        //String q3 = "insert into user_details(user_id,first_name,last_name ,bday,sex,ph_no,email,address,lives_in)values(?,?,?,?,?,?,?,?)";
         String a="";
         String b="";
         String c="";
         String d="";
         String e="";
         String f="";
         String g="";
         
            pstmt3 = con.prepareStatement("insert into user_info values(?,?,?,?,?,?,?,?)");
            pstmt3.setString(1, userid);
            pstmt3.setString(2, a);
            pstmt3.setString(3, b);
            pstmt3.setString(4, c);
            pstmt3.setString(5, d);
            pstmt3.setString(6, e);
            pstmt3.setString(7, f);
            pstmt3.setString(8, g);
            int t4=pstmt3.executeUpdate();
            
              PreparedStatement pstmt4= null;
             pstmt4 = con.prepareStatement("insert into user_edu_work values(?,?,?,?,?,?,?,?,?,?,?)");
            pstmt4.setString(1, userid);
            pstmt4.setString(2, null);
            pstmt4.setString(3, null);
            pstmt4.setString(4, null);
            pstmt4.setString(5, null);
            pstmt4.setString(6,null);
            pstmt4.setString(7, null);
            pstmt4.setString(8, null);
             pstmt4.setString(9, null);
              pstmt4.setString(10, null);
               pstmt4.setString(11, null);
            
            int t5 = pstmt4.executeUpdate();
if(t5==1)
    out.println(t5+"records inserted");
           
           PreparedStatement pstmt5= null;
            pstmt5 = con.prepareStatement("insert into profile_pic values(?,?)");
            pstmt5.setString(1, userid);
             String filepath="profilepic//p2.png";
            pstmt5.setString(2, filepath);
             int t6 = pstmt5.executeUpdate();
            if ((t1 > 0) && (t2 > 0) && (t3 > 0)&& (t4>0)&&(t5>0) &&(t6>0)) 
            {
                out.println("<h1>Your account has been created succeessfully");
               // alert("Your account is created successfully");
                 
             RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
             rd.forward(request, response);
            }
             } 
            con.close();
        } catch (Exception e) {
            out.println(e);
        } finally {
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
