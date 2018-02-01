<%--
    Document   : save1
    Created on : Mar 29, 2013, 1:54:54 PM
    Author     : MISS. MAJUMDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>

<%
    try {
        Class.forName("oracle.jdbc.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
        if (con == null) {%>
connection not created
<%
   }
   else{
        %>
        connection created
        <%


            HttpSession hs = request.getSession();
            String userid = (String) hs.getAttribute("username");
            
            String bs = request.getParameter("bday") + "-" + request.getParameter("bmonth") + "-" + request.getParameter("byear");
            String about=request.getParameter("about");
           String religious=request.getParameter("religious");
           String political=request.getParameter("political");
           String interest=request.getParameter("interest");
           String relationship=request.getParameter("relationship");
           
           //out.println(about+religious+political+interest+relationship+bs+fq);
           String fq=request.getParameter("fq");
           //out.println(about+religious+political+interest+relationship+bs+fq);
           //out.println(userid);
            PreparedStatement pst = con.prepareStatement("update user_info set about_you  =?,religious_view  =?,political_view  =?,hobbies  =?,relationship_status  =?,anniversary =?,fav_quotes =? where user_id=?");
           
            pst.setString(1, about);
            pst.setString(2, religious);
            pst.setString(3,political );
            pst.setString(4,  interest   );
            pst.setString(5, relationship );
            pst.setString(6, bs);
            pst.setString(7, fq );
            pst.setString(8, userid);

            int t = pst.executeUpdate();
            //System.out.println("hello");
            if (t ==1) {
                RequestDispatcher rd = request.getRequestDispatcher("/static1.jsp");
             rd.forward(request, response);
                //out.println("<h1>update Successfully</h1>");
            }
           // con.close();
        }
    } catch (Exception e) {
        out.println(e);
    }
%>
