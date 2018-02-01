<%-- 
    Document   : showfriendrequest
    Created on : Apr 20, 2013, 11:44:49 PM
    Author     : Abc
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Connection.DBconnection"%>

<%@ page import="java.sql.*"%>
<%--@ page import="com.Connection.DBconnection" --%>

<%@ include file="templateview/header.jsp" %>



<html>
    <body>
        <div id="templatemo_body_wrapper">
            <div id="templatemo_wrapper">
                <div id="templatemo_header">

                    <div id="site_title">
                        <a href="http://www.templatemo.com/page/1" target="_parent">
                            <img src="images/title.PNG" alt="logo" />
                            <span>Be Connected With Friends</span>
                        </a>
                    </div>

                    <div id="shopping_cart_box">
                        <h3><label >  <a href="profile.jsp">My Profile</a></label></h3>



                    </div>

                </div> <!-- end of templatemo_header -->
                <%--@ include file="templateview/menu1.jsp" --%>
                <!-- end of templatemo_menu -->

                <table align="center" width="60%"><tr><td>
                            <div id="templatemo_content_wrapper">

                                <%--@ include file="templateview/leftupper.jsp" --%>

                                <%--@ include file="templateview/leftbox.jsp" --%>

                                <div id="templatemo_content">

                                    <div id="content_top"></div>
                                    <div id="content_middle2">


                                        <%
                                            String fname = null;
                                            String lname = null;
                                            String newid = null;
                                            String newid1 = null;
                                            try {
                                                Class.forName("oracle.jdbc.OracleDriver");
                                                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");

                                                HttpSession ses = request.getSession(true);
                                                String userid = (String) ses.getAttribute("username");
                                                //String username =request.getParameter("unknown");
                                                // String userid="dev@gmail.com";
                                                //out.println(userid);
                                                //PreparedStatement pst = conn.prepareStatement("select user_id from friend_request   where   friend_request_id= ?");
                                                PreparedStatement pst = conn.prepareStatement("select ud.user_id,ud.first_name,ud.last_name from friend_request cs,user_details ud  where ud.user_id=cs.user_id and  friend_request_id= ?");
                                                pst.setString(1, userid);
                                                ResultSet rs = pst.executeQuery();%>
                                        <table align="center">
                                            <% while (rs.next()) {%><tr>
                                                <% newid = rs.getString("user_id");
                                                    fname = rs.getString("first_name");
                                                    lname = rs.getString("last_name");

                                            %>
                                            
                                                <td align="left">  <h4> <% out.println(fname + " " + lname);%></h4> <td>
                                                    <% String url = "Acceptfriend?new=" + newid + "";%>
                                                <td align="right"><h4><a href=<%=url%>>Accept </a></h4><td>

                                                            <% String url1 = "Deletefriend?new1=" + newid1 + "";%>
                                                        <td align="right"><h4><a href=<%=url1%>> Decline </a></h4><td>
                                                                    </tr>
                                                                    </table>

                                                                    <%
                                                                            }%>
                                                                            <div class="cleaner"></div>

                                                                    </div>
                                                                    <div id="content_bottom"></div>

                                                                    <% 

                                                                        } catch (Exception e) {
                                                                            out.println(e);
                                                                            e.printStackTrace();
                                                                        }


                                                                    %>
                                                                    
                                                                    </div>

                                                                    <div class="templatemo_sidebar_wrapper float_r">

                                                                        <div class="templatemo_sidebar">

                                                                            <%--@ include file="templateview/rightbox.jsp" --%>	
                                                                            <!-- end of sidebar_box ( news ) -->

                                                                            <!-- end of sidebar_box ( newsletter ) -->

                                                                        </div>  <!-- end of sidebar -->
                                                                    </div> <!-- end of templatemo_sidebar_wrapper --> 


                                                                    <div class="cleaner"></div>

                                                                    </div> <!-- end of templatemo_content_wrapper -->
                                                                </td></tr>
                                                                </table>
                                                                </div> <!-- end of templatemo_wrapper -->

                                                                <div class="cleaner"></div>
                                                                </div> <!-- end of templatemo_body_wrapper -->

                                                                <%--@ include file="templateview/footer.jsp" --%>
                                                                </body>
                                                                </html>

