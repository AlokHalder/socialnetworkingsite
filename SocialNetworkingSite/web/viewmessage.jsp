<%-- 
    Document   : viewmessage
    Created on : Apr 6, 2013, 12:45:53 AM
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


                                        <%try {
                                                HttpSession ses = request.getSession();
                                                String username = (String) ses.getAttribute("username");
                                                //String username = "sutandra_mani@yahoo.com";
                                                DBconnection dbCon = new DBconnection();
                                                Connection con = dbCon.createCon();

                                                if (con == null) {%>
                                        <H1>Unable to create connection!</H1>
                                        <%} else {%>

                                        <%

                                            //  PreparedStatement pstmt = con.prepareStatement("select user_id,msg_content,msg_date from message_record where to_user=? and flag=?");
                                            PreparedStatement pstmt = con.prepareStatement("select  ud.first_name,ud.last_name,mr.msg_content,mr.msg_date  from user_details ud , message_record mr where ud.user_id = mr.user_id and mr.to_user=? and mr.flag=? order by mr.msg_date desc");

                                            pstmt.setString(1, username);
                                            pstmt.setString(2, "0");
                                            ResultSet rs = pstmt.executeQuery();
                                            /*while (rs.next()) {
                                             Int msgid = rs.getInt("msg_id");
                                             */
                                            ResultSetMetaData rsm = rs.getMetaData();
                                            int col = rsm.getColumnCount();

                                        %>

                                        <table cellpadding="10" cellspacing="10" align="center">
                                            <%--<th>
                                                 <%for (int i = 1; i <= col; i++) {%>
                                            <td><%=rsm.getColumnName(i)%></td>
                                            <%}
                                            %>
                                        </th>--%>
                                            <%
                                                while (rs.next()) {%><tr><%
        //for (int i = 1; i <= col; i++) {
                                                %>
                                                <td> <%=rs.getString(1)%></td>
                                                <td> <%=rs.getString(2)%></td>
                                                <td> <%=rs.getString(3)%></td>
                                                <td> <%=rs.getString(4)%></td>
                                            </tr>
                                            <%
                                                   /* Integer msgid = rs.getInt(5);
                                                    String updateMessage = "update message_record set flag='1' where msg_id=? and to_user=?";
                                                    PreparedStatement pstmt1 = con.prepareStatement(updateMessage);
                                                    pstmt1.setInt(1, msgid);
                                                    pstmt1.setString(2, username);
                                                    pstmt1.executeUpdate();*/


                                                }
                                                String updateMessage = "update message_record set flag='1' where flag='0'";
                                                PreparedStatement pstmt1= con.prepareStatement(updateMessage);
                                                //pstmt1.setString(1,"0");        
                                                //pstmt1.setString(2,rs.getString("user_id"));    
                                                pstmt1.executeUpdate();


                                            %>



                                            <%}
                                            %>
                                        </table>
                                        <%} catch (Exception e) {

                                                out.println(e.getMessage());
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

