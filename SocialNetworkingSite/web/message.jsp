+<%-- 
    Document   : message
    Created on : Apr 5, 2013, 9:34:31 PM
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
                        <label txtcolor="white">  <h3><a href="profile.jsp">My Profile</a></h3></label>



                    </div>

                </div> <!-- end of templatemo_header -->
                <%--@ include file="templateview/menu1.jsp" --%>
                <!-- end of templatemo_menu -->
<form action="Message" method="post">
                <table align="center" width="60%"><tr><td>
                            <div id="templatemo_content_wrapper">

                                <%--@ include file="templateview/leftupper.jsp" --%>

                                <%--@ include file="templateview/leftbox.jsp" --%>

                                <div id="templatemo_content">


                                    <% DBconnection dbCon = new DBconnection();
                                        PreparedStatement pstmt = null;

                                        String fname = null;
                                        String lname = null;
                                        String userid = "";
                                        HttpSession ses = request.getSession();
                                        String username = (String) ses.getAttribute("username");
                                        try {
                                            Connection con = dbCon.createCon();

                                            if (con == null) {
                                                System.out.println("Connection not created");
                                            } else {

                                                /* out.println("connection created...");*/

                                                String sql = "select first_name,last_name,user_details.user_id from friend_list,user_details where friend_list.friend_id=user_details.user_id and friend_list.user_id=?";
                                                pstmt = con.prepareStatement(sql);
                                                pstmt.setString(1, username);
                                                ResultSet rs = pstmt.executeQuery();
                                    %>
                                    <div id="content_top"></div>
                                    <div id="content_middle2">
                                        <p><h4>To  :</h4>
                                        <select name="toUserId">
                                            <option value="0">Select Friend</option>
                                            <%
                                                while (rs.next()) {
                                                    fname = rs.getString("first_name");
                                                    lname = rs.getString("last_name");
                                                    userid = rs.getString("user_id");

                                            %>
                                            <option value="<%=userid%>"><%=fname + "  " + lname%></option>

                                            <%
                                                    }
                                                }
                                            %>
                                        </select>
                                 
                                        <%
                                            } catch (SQLException sqe) {
                                                out.println(sqe);
                                            }
                                        %>


                                        <p> <h4> Type your message :</h4></br>
                                        
                                            <textarea name="msgData" rows="5" cols="50"></textarea>
                                            <br></br>
                                            <input type="submit" value="send" name="submit" align="right"/>
                                        </form>

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

