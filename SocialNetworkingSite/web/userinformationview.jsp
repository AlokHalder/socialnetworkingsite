<%-- 
    Document   : userinformationview
    Created on : Apr 18, 2013, 2:40:38 PM
    Author     : Devlina Datta
--%>

<%@page import="com.Connection.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%--<%@ include file="connect.jsp" %>--%>
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
                                            <div id="content_middle"> 
                                            <%! String username = null;%>
                                            <%
                                                HttpSession ses2 = request.getSession();
                                                String username = (String) ses2.getAttribute("friendid");
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
                                                    pst = con.prepareStatement("select * from user_info where user_id=?");
                                                    pst.setString(1, username);
                                                    ResultSet rs = pst.executeQuery();%>
                                            
                                                <% if (rs.next()) {
                                                //out.println("success");
                                                %> 

                                                <form action="usereducationview.jsp" method="post">
                                                    <fieldset>
                                                        <legend><em>User Information</em></legend>
                                                        <table  cellspacing="5" cellpadding="5" align="center">
                                                            <tr>
                                                                <td><h4>About :</h4></td>
                                                                <td><label><%=rs.getString(2)%></label></td>
                                                            </tr>

                                                            <tr>
                                                                <td><h4>Religiou View:</h4></td>
                                                                <td><label><%=rs.getString(3)%></label></td>
                                                            </tr>
                                                            <tr>
                                                                <td><h4>Political View:</h4></td>

                                                                <td><label><%=rs.getString(7)%></label></td>
                                                            </tr>

                                                            <tr>
                                                                <td><h4>Hobbies/Interest:</h4> </td>
                                                                <td><label><%=rs.getString(6)%></label></td>
                                                            </tr>

                                                            <tr>
                                                                <td><h4>Relationship:</h4></td>
                                                                <td><label><%=rs.getString(5)%></label></td>

                                                            </tr>

                                                            <tr>
                                                                <td> <h4>Aniversery:</h4></td>
                                                                <td><label><%=rs.getString(4)%></label></td>
                                                            </tr>
                                                            <td><h4>Favourite Qoutes:</h4></td>
                                                            <td><label><%=rs.getString(3)%></label></td>
                                                            </tr>
                                                        </table>
                                                      
                                                    </fieldset> 
                                                            <div class="cleaner"></div>

                                                        </div>
                                                        <div id="content_bottom"></div>
                                                        </div> 

                                                    <table align="right">
                                                        <tr>
                                                            
                                                           <%-- <td><input type="submit" name="v1" value="next"></td>--%>
                                                        <tr>
                                                    </table>

                                                            <%} else {%>

                                                            <%
                                                                        out.println("<form action=usereducationview.jsp method=post>");
                                                                        out.println("<fieldset>");
                                                                        out.println("<legend><em>User Information</em></legend>");
                                                                        out.println("<table  cellspacing=5 cellpadding=5 align=center >");
                                                                        out.println("<tr>");
                                                                        out.println("<td><h4>About: </h4></td>");
                                                                        out.println("<td>");
                                                                        out.println("<label></label>");
                                                                        out.println("</td>");
                                                                        out.println("</tr>");
                                                                        out.println("<tr>");
                                                                        out.println("<td><h4>Religiou View:</h4></td>");
                                                                        out.println("<td>");
                                                                        out.println("<label></label>");
                                                                        out.println("</td>");
                                                                        out.println("</tr>");
                                                                        out.println("<tr>");
                                                                        out.println("<td><h4>Political View:</h4></td>");
                                                                        out.println("<td>");
                                                                        out.println("<label></label>");
                                                                        out.println("</td>");
                                                                        out.println("</tr>");
                                                                        out.println("<tr>");
                                                                        out.println("<td><h4>Hobbies/Interest:</h4></td>");
                                                                        out.println("<td>");
                                                                        out.println("<label></label>");
                                                                        out.println("</td>");
                                                                        out.println("</tr>");
                                                                        out.println("<tr>");
                                                                        out.println("<td><h4>Relationship:</h4></td>");

                                                                        out.println("<label></label>");
                                                                        out.println("</td>");
                                                                        out.println("</tr>");
                                                                        out.println("<tr>");
                                                                        out.println("<td> <h4>Aniversery:</h4></td>");
                                                                        out.println("<td>");
                                                                        out.println("<label></label>");
                                                                        out.println("<tr>");
                                                                        out.println("<td><h4>Favourite Qoutes:</h4></td>");
                                                                        out.println("<td>");
                                                                        out.println("<label></label>");
                                                                        out.println("</tr>");
                                                                        out.println("</table>");
                                                                        out.println(" </tbody>");
                                                                        out.println("</fieldset>");
                                                                        out.println("  <table align=right cellpadding=10 cellspacing=10>");
                                                                        out.println("</tr>");%>
                                                                        
                                                                        <div class="cleaner"></div>

                                                        </div>
                                                        <div id="content_bottom"></div>
                                                        
                                                                        <%
                                                                        //out.println("  <td><input type=submit name=v1 value=next></td>");
                                                                        out.println("</tr>");
                                                                        out.println("</table>");
                                                                        out.println("</form>");
                                                                        out.println("<tbody>");



                                                                        //RequestDispatcher rd = request.getRequestDispatcher("/userinformation.jsp");
                                                                        //rd.forward(request, response);

                                                                        // out.println("unsuccessful");
                                                                    }
                                                                } catch (Exception e) {
                                                                }
                                                            %>
                                                        

                                                        <div class="templatemo_sidebar_wrapper float_r">

                                                            <div class="templatemo_sidebar">

                                                                <%--@ include file="templateview/rightbox.jsp" --%>	
                                                                <!-- end of sidebar_box ( news ) -->

                                                                <!-- end of sidebar_box ( newsletter ) -->

                                                            </div>  <!-- end of sidebar -->
                                                        </div> <!-- end of templatemo_sidebar_wrapper --> 


                                                        <div class="cleaner"></div>

                                                        <!-- end of templatemo_content_wrapper -->
                                                        </td></tr>
                                                    </table>
                                            </div> <!-- end of templatemo_wrapper -->

                                            <div class="cleaner"></div>
                                </div> <!-- end of templatemo_body_wrapper -->

                                <%--@ include file="templateview/footer.jsp" --%>
                                </body>
                                </html>

