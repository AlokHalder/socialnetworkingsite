<%-- 
    Document   : postshow
    Created on : Apr 20, 2013, 11:48:33 AM
    Author     : Devlina Datta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@ page import="com.Connection.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
.box {
	
	border-bottom: 1px solid #999;
}
    </style>

    <% 
      /* HttpSession ses = request.getSession();
       String username = (String) ses.getAttribute("username");*/
    String unm=(String)session.getAttribute("username");

            PreparedStatement pst1 = null;
            DBconnection dbConp = new DBconnection();
            
%>

           <% try {
                 Connection conp = dbConp.createCon();
                if (conp == null) {
                out.println("Connection not created...");
        } else {
       
     
             

                
         PreparedStatement pst2 = conp.prepareStatement("select post_id,user_id,post_contain,post_date from post where user_id=? order by post_date desc");

         pst2.setString(1, unm);
         ResultSet rs1 = pst2.executeQuery();
       
             ResultSetMetaData rsm = rs1.getMetaData();
             int col = rsm.getColumnCount();

        %>
        <table  cellspacing="5" cellpadding="10" align="center"  width="100%">
       <%
                 while (rs1.next()) {%><tr>
                     <%
                     String postid=rs1.getString(1);
           // for (int i = 1; i <=col; i++) {
        %>
        <td align="left"> <%=rs1.getString(3)%></td>
        <td align="right"> <%=rs1.getString(4)%></td>
        <% String url="Postdelete?delpost="+unm+"&pid="+postid;   %>
        <td><h4><a href=<%=url%>> delete</a></h4><td>

             <%}%>   
                     
           </tr>
           
             
        <%//}
        %>
    </table>

             
        <%}
       
        
    }
         catch (Exception e) {

            out.println(e.getMessage());
             }%>