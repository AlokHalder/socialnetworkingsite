<%-- 
    Document   : searchuser
    Created on : Apr 17, 2013, 6:46:07 PM
    Author     : Devlina Datta
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
                        <h3></h3>



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
                                            <!DOCTYPE html>
                                            <% String name = request.getParameter("username");
                                                //out.println(name);
                                                DBconnection dbCon = new DBconnection();
                                                PreparedStatement pstmt = null;
                                                String fname = null;
                                                String lname = null;
                                                String userid = null;
                                                try {
                                                    Connection con = dbCon.createCon();

                                                    if (con == null) {
                                                        out.println("Connection not created");
                                                    } else {
                                                        //out.println("connection created..." + name);
                                                        String q1 = "select user_id,first_name,last_name from user_details where first_name like'" + name + "%'";
                                                        /*out.println("------"+q1);*/
                                                        pstmt = con.prepareStatement(q1);

                                                        /* pstmt.setString(1, name);*/

                                                        ResultSet rs = pstmt.executeQuery();
                                                        while (rs.next()) {
                                                            userid = rs.getString("user_id");
                                                            fname = rs.getString("first_name");
                                                            lname = rs.getString("last_name");
                                                            /*out.println(fname + " " + lname );*/
                                                            out.println("<h1><a href=profilenotfriend.jsp?unknown=" + userid + ">" + fname + " " + lname + "</a>");
                                                        }
                                                    }
                                                } catch (Exception e) {
                                                    out.println(e);
    }%>
<div class="cleaner"></div>

                                    
                                    
                                 </div>
                                        <div id="content_bottom"></div>
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

