<%-- 
    Document   : friendrequest
    Created on : Apr 10, 2013, 12:29:34 PM
    Author     : Devlina Datta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.Connection.DBconnection" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% DBconnection dbCon = new DBconnection();
            PreparedStatement pstmt = null;
       
            String fname = null;
            try {
                Connection con = dbCon.createCon();

                if (con == null) {
                    System.out.println("Connection not created");
                } else {

                    out.println("connection created...");

                    String sql = "select * from user_details";
                    pstmt = con.prepareStatement(sql);
                    ResultSet rs = pstmt.executeQuery();
        %>
        <p>Select Friend :
            <select>
                <%
                    while (rs.next()) {
                        fname = rs.getString("first_name");

                %>
                <option value="<%=fname%>"><%=fname%></option>
                <%
                        }
                    }
                %>
            </select>
        </p>
        <%
            } catch (SQLException sqe) {
                out.println(sqe);
            }
        %>


    </body>                                                                                                               
</html>
