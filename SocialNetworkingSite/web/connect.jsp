<%-- 
    Document   : connect.jsp
    Created on : Mar 27, 2013, 9:28:04 PM
    Author     : MISS. MAJUMDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.* "%>
<%! Connection con=null; %>

<% try{
   Class.forName("oracle.jdbc.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@10.10.200.5:1521:orcl1","fsp13","fsp13");
   }
catch(Exception e)
        {
    }
%>

