<%-- 
    Document   : static1
    Created on : Apr 14, 2013, 11:20:14 AM
    Author     : Abc
--%>

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


                                    <%! String username = null;%>
                                    <%
                                        String username = (String) session.getAttribute("username");
                                        PreparedStatement pst = null;


                                        try {
                                            Class.forName("oracle.jdbc.driver.OracleDriver");
                                            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
                                            if (con == null) {
                                    //out.println("Connection not created...");
                                    } else {
                                    
                                    //out.println("Connection created...");
                                    }
                                        // out.println(username);
                                        pst = con.prepareStatement("select * from user_edu_work where user_id=?");
                                        pst.setString(1, username);
                                        ResultSet rs = pst.executeQuery();
                                        if (rs.next()) {
                                            //out.println("success");
                                    %> 
                                    <div id="content_top"></div>
                                    <div id="content_middle">        
                                        <form action="controller2" method="post">
                                            <fieldset>
                                                <legend><em>User Education Information</em></legend>
                                                <table  cellspacing="0" cellpadding="0" align="center">

                                                    <tr>
                                                        <td><h4>School:</h4></td>
                                                        <td><label><%=rs.getString(2)%></label></td>
                                                    </tr>
                                                    <tr>
                                                        <td><h4> School Pass out Year:</h4></td>
                                                        <td><label><%=rs.getString(3)%></label></td>

                                                    </tr>
                                                    <tr>
                                                        <td><h4>High School:</h4></td>
                                                        <td><label><%=rs.getString(4)%></label></td>
                                                    </tr>
                                                    <tr>
                                                        <td><h4> High School Pass out Year :</h4></td>
                                                        <td><label><%=rs.getString(5)%></label></td>
                                                    </tr>


                                                    <tr>
                                                        <td><h4> Graduation College:</h4></td>
                                                        <td><label><%=rs.getString(6)%></label></td>
                                                    </tr>
                                                    <tr>
                                                        <td><h4>Graduation Pass out Year:</h4></td>
                                                        <td><label><%=rs.getString(7)%></label></td>
                                                    </tr>


                                                    <tr>
                                                        <td><h4>Post Graduate Collage:</h4></td>
                                                        <td><label><%=rs.getString(8)%></label></td>
                                                    </tr>

                                                    <tr>
                                                        <td><h4>Post Graduation Pass out Year:</h4></td>
                                                        <td><label><%=rs.getString(9)%></label></td>

                                                    </tr>
                                                    <tr>
                                                        <td><h4>Works In:</h4> </td>
                                                        <td><label><%=rs.getString(10)%></label></td>
                                                    </tr>
                                                    <tr>
                                                        <td><h4>Designation :</h4></td>
                                                        <td><label><%=rs.getString(11)%></label></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </fieldset>
                                            <div class="cleaner"></div>

                                    </div>
                                    <div id="content_bottom"></div>

                                    <table align="right">
                                        <tr>
                                            <td><input type="submit" name="v1" value="edit"></td>
                                            <td><input type="submit" name="v1" value="next"></td>
                                                <%} else {%>
                                            <div id="content_top"></div>
                                    <div id="content_middle">     

                                        <%
                                           out.println("<form action=controller2 method=post>");
                                                            out.println("<fieldset>");
                                                            out.println("<legend><em>User Education Information</em></legend>");
                                                            out.println("<table  cellspacing=5 cellpadding=5 align=center>");
                                                            out.println("<tr>");
                                                            out.println("<td><h4>School: </h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</td>");
                                                            out.println("</tr>");
                                                            out.println("<tr>");
                                                            out.println("<td><h4>School pass out Year:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</td>");
                                                            out.println("</tr>");
                                                            out.println("<tr>");
                                                            out.println("<td><h4>High School:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</td>");
                                                            out.println("</tr>");
                                                            out.println("<tr>");
                                                            out.println("<td><h4>High School Pass Out Year:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</td>");
                                                            out.println("</tr>");
                                                            out.println("<tr>");
                                                            out.println("<td><h4>Graduation  College:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</td>");
                                                            out.println("</tr>");
                                                            out.println("<tr>");
                                                            out.println("<td><h4> Graduation Pass Out Year:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("<tr>");
                                                            out.println("<td><h4>Post Graduation College:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</tr>");

                                                            out.println("<tr>");
                                                            out.println("<td><h4>Post Graduation Pass Out Year:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</tr>");


                                                            out.println("<tr>");
                                                            out.println("<td><h4>Works In:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</tr>");

                                                            out.println("<tr>");
                                                            out.println("<td><h4>Designation:</h4></td>");
                                                            out.println("<td>");
                                                            out.println("<label></label>");
                                                            out.println("</tr>");

                                                            out.println("</table>");
                                                            out.println(" </tbody>");
                                                            out.println("</fieldset>");
                                                            out.println("  <table align=right cellpadding=10 cellspacing=10>");
                                                            out.println("</tr>");
                                                            out.println("<td><input type=submit name=v1 value=edit></td>");
                                                            out.println("<td><input type=submit name=v1 value=next></td>");
                                                            out.println("</tr>");
                                                            out.println("</table>");
                                                            out.println("</form>");
                                                            out.println("<tbody>");

                                                            //out.println("unsuccessful");
                                                        }
                                                    } catch (Exception e) {
                                                    }
                                                %>
                                        </tr>
                                    </table>
                                        <div class="cleaner"></div>

                                    </div>
                                    <div id="content_bottom"></div>
                                    </form>
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


