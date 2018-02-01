<%-- 
    Document   : static
    Created on : Apr 11, 2013, 11:55:21 AM
    Author     : Abc
--%>

<%@ page import="java.sql.*"%>
<%--@ page import="com.Connection.DBconnection" --%>

<%@ include file="template/header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


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

                </div>  <!-- end of sidebar -->
            </div> <!-- end of templatemo_sidebar_wrapper --> 
            <table align="center" width="60%"><tr><td>
                            <div id="templatemo_content_wrapper">
            <div id="templatemo_content">
            	
                <div id="banner">
                    
                </div>
            
                
                                    <div id="content_top"></div>
                                    <div id="content_middle" >


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

                                                // out.println(username);
                                                pst = con.prepareStatement("select * from user_details where user_id=?");
                                                pst.setString(1, username);
                                                ResultSet rs = pst.executeQuery();
                                                if (rs.next()) {
                                                    //out.println("success");
%> 
                                        <form action="controller" method="post">
                                            <fieldset >
                                                <legend><em>Basic Details</em></legend>
                                                <table  cellspacing="2" cellpadding="2" align="center" width="70%">

                                                    <tbody>
                                                        <tr>
                                                            <td><h4>First Name :</h4></td> 
                                                            <td><label><%=rs.getString(2)%></label></td>

                                                        </tr>
                                                        <tr>
                                                            <td><h4>Last Name :</h4></td>
                                                            <td><label><%=rs.getString(3)%></label></td>

                                                        </tr>
                                                        <tr>
                                                            <td><h4>Birthday :</h4></td>
                                                            <td><label><%=rs.getString(4)%></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h4>Sex :</h4></td>
                                                            <td><label><%=rs.getString(5)%></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h4>Contact Number :</h4></td>
                                                            <td><label><%=rs.getString(6)%></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h4>Email Address:</h4></td>
                                                            <td><label><%=rs.getString(7)%></label></td>

                                                        </tr>
                                                        <tr>
                                                            <td><h4>Permanent Address :</h4></td>
                                                            <td><label><%=rs.getString(8)%></label></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h4>Currently Lives In :</h4></td>
                                                            <td><label><%=rs.getString(9)%></label></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </fieldset>
                                            <div class="cleaner"></div>
                                    </div>
                                    <div id="content_bottom"></div>
                                    <table align="right" cellpadding="10" cellspacing  ="10">
                                        <tr>

                                            <td><input type="submit" name="v1" value="edit"></td>
                                            <td><input type="submit" name="v1" value="next"></td>
                                                <%
                                                            }
                                                        }
                                                    } catch (Exception e) {
                                                    }
                                                %>


                                            <div class="cleaner"></div>
                            
                                    </table>
            </div> 
                                                
            <div class="templatemo_sidebar_wrapper float_r">
                
                <div class="templatemo_sidebar">
                     
                 
                     <!-- end of sidebar_box ( news ) -->
                    
                     <!-- end of sidebar_box ( newsletter ) -->

                </div>  <!-- end of sidebar -->
            </div> <!-- end of templatemo_sidebar_wrapper --> 
            
            
          <div class="cleaner"></div>

      </div> <!-- end of templatemo_content_wrapper -->
        
    </div> <!-- end of templatemo_wrapper -->
	    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_body_wrapper -->
                                               
<%--@ include file="template/footer.jsp" --%>
    </body>
</html>
