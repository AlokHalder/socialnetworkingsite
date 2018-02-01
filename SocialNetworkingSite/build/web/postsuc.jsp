<%-- 
    Document   : postsuc
    Created on : Apr 19, 2013, 2:04:15 PM
    Author     : Abc
--%>

<%@page import="com.Connection.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file="connect.jsp" %>
<%
    //HttpSession ses = request.getSession();
    String unm = (String) session.getAttribute("username");
    try {
        Connection con = DBconnection.createCon();
        PreparedStatement ps = con.prepareStatement("select max(post_id) from post");
        ResultSet rs = ps.executeQuery();
        int lastpostid = 0;
        if (rs.next()) {
            lastpostid = (rs.getInt(1) + 1);
        }
        //Class.forName("oracle.jdbc.OracleDriver");
        ////Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
        if (con == null) {%>
connection not created
<%   } else {
%>

<%
            String postdata = request.getParameter("t1");
            DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
            Date date = new Date();
            String createdon = (dateFormat.format(date));
            PreparedStatement pst1 = null;
            RequestDispatcher rd = null;
            pst1 = con.prepareStatement("insert into post values(?,?,?,?)");
            pst1.setInt(1,lastpostid  );
            pst1.setString(2, unm);
            pst1.setString(3, postdata);
            pst1.setString(4, createdon);
            int t = pst1.executeUpdate();


            if (t > 0) {
                rd = request.getRequestDispatcher("profile.jsp");
                rd.forward(request, response);

            }
        }
        con.close();
    } catch (Exception e) {
        out.println(e);
    } finally {
        out.close();
    }


%>