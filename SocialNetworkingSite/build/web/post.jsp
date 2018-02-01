<%-- 
    Document   : post
    Created on : Apr 19, 2013, 2:03:07 PM
    Author     : Abc
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <form action="postsuc.jsp" method="post">
        <body bgcolor="grey">
        
        <% 
      /* HttpSession ses = request.getSession();
       String username = (String) ses.getAttribute("username");*/
   /* String unm=(String)session.getAttribute("username");

            PreparedStatement pst1 = null;


           <% try {
                Class.forName("oracle.jdbc.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
                if (con == null) {
        out.println("Connection not created...");
        } else {
        
     
             

                
         PreparedStatement pst2 = con.prepareStatement("select post_contain,post_date from post where user_id=? ");

         pst2.setString(1, unm);
         ResultSet rs1 = pst2.executeQuery();
       
             ResultSetMetaData rsm = rs1.getMetaData();
             int col = rsm.getColumnCount();

       */ %>
        
                      
        <table  cellspacing="15" cellpadding="15" align="left" width="400px">
            
             <textarea name="t1" rows="5" cols="50"></textarea><br>
            
            <input type="submit"  value="post"/>

        
        <%/*
                 while (rs1.next()) {*/%><tr><%/*
            for (int i = 1; i <=col; i++) {
        */%>
        <td> <%/*=rs1.getString(i)*/%></td>
        <%}

                 %>
               
           </tr>
           
             
        <%}
        %>
    </table>
    <%/*}
        } catch (Exception e) {

            out.println(e.getMessage());
             }*/%>

      </form>
    
</html>

       