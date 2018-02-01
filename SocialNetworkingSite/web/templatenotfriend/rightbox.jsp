<%-- 
    Document   : rightbox
    Created on : Apr 4, 2013, 11:52:29 AM
    Author     : Administrator
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Connection.DBconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="sidebar_box">

            <h2>Friendlist</h2>

            <div class="sidebar_box_content">

                <div class="news_box">
                    <% 
                       DBconnection dbConr = new DBconnection();
                        PreparedStatement pstmtr = null;
                        String userid =request.getParameter("unknown");
                        String fnamer = null;
                        String lnamer = null;
                        String frienduserid =null;
                       
                        try {
                            Connection conr = dbConr.createCon();

                            if (conr == null) {
                                System.out.println("Connection not created");
                            } else {

                                /* out.println("connection created...");*/

                                String q1= "select friend_id,first_name,last_name from user_details,friend_list where user_details.user_id=friend_list.friend_id and friend_list.user_id=?";
                                pstmtr = conr.prepareStatement(q1);
                                pstmtr.setString(1, userid);
                                
                                ResultSet rs = pstmtr.executeQuery();
                    
                    
                            
                                while (rs.next()) {
                                    fnamer = rs.getString("first_name");
                                    lnamer = rs.getString("last_name");
                                    frienduserid = rs.getString("friend_id");
                                    /*out.println(fnamer+lnamer+userid);*/
                           %>
                           <h4><b><%=fnamer +" "+ lnamer%></b></h4>

                            <%
                                    }
                                }
                            
                     
                   
                        } catch (SQLException sqe) {
                            out.println(sqe);
                        }
                    %>


                </div>
                <div class="news_box">
                    
                </div>
                <div class="news_box">
                    
                </div>

                <div class="news_box">
                    
                </div>
            </div> <!-- end of sidebar_box_content -->
        </div>
    </body>
</html>
