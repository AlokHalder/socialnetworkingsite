<%-- 
    Document   : profileview
    Created on : Apr 13, 2013, 1:40:11 AM
    Author     : Devlina Datta
--%>

<%@ page import="java.sql.*"%>
<%@ page import="com.Connection.DBconnection" %>

<%@ include file="templateview/header.jsp" %>
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
                <p><%DBconnection dbCon = new DBconnection();
                        PreparedStatement pstmt = null;
                        String fname=null;
                        String lname=null;
                        try {
                            Connection con = dbCon.createCon();
                          
                            HttpSession ses = request.getSession();
                            String username1 = (String) ses.getAttribute("username");
                           
                            if (con == null) {
                                System.out.println("Connection not created");
                                } 
                               else {
                                /*out.println("connection created..."+ username);*/
                                String q1 = "select first_name,last_name from user_details where user_id=?";
                                pstmt = con.prepareStatement(q1);

                                pstmt.setString(1, username1);

                                ResultSet rs = pstmt.executeQuery();
                                if (rs.next())
                                {                                    
                                    fname = rs.getString("first_name");
                                    lname = rs.getString("last_name");
                                }%>

                <h3> <% out.println(fname+" "+lname);%></h3>
                <% }
                           }
                         catch (Exception e) {
                            out.println(e);
                        }
                        %>


            </div>
        
        </div> <!-- end of templatemo_header -->
        <%@ include file="templateview/menu1.jsp" %>
         <!-- end of templatemo_menu -->
        <div id="templatemo_content_wrapper">
        	
            <div class="templatemo_sidebar_wrapper float_l">
                <div class="templatemo_sidebar_top"></div>
                <div class="templatemo_sidebar">
                    <div class="sidebar_box">
                    
                  
                        
                   <%@ include file="templateview/leftupper.jsp" %>
                
                  <%@ include file="templateview/leftbox.jsp" %>
                
                        
                
                </div> <div class="templatemo_sidebar_bottom"></div> <!-- end of sidebar -->
            </div> <!-- end of templatemo_sidebar_wrapper --> 
            
            <div id="templatemo_content">
            	
                <div id="banner">
                    <a href="http://www.templatemo.com/preview/templatemo_173_store" target="_parent"><img src="img/fr1.jpg" alt="banner" width="540" height="150"/></a>                
                </div>
            
           	  <div id="content_top"></div>
                <div id="content_middle">
                    <%
                        PreparedStatement pstmt1 = null;
                        String fname1=null;
                        String lname1=null;
                        try {
                            Connection con = dbCon.createCon();
                          
                            //HttpSession ses = request.getSession();
                            String uname1 =request.getParameter("friendid");;
                           
                            if (con == null) {
                                System.out.println("Connection not created");
                                } 
                               else {
                                /*out.println("connection created..."+ username);*/
                                String q1 = "select first_name,last_name from user_details where user_id=?";
                                pstmt = con.prepareStatement(q1);

                                pstmt.setString(1, uname1);

                                ResultSet rs = pstmt.executeQuery();
                                if (rs.next())
                                {                                    
                                    fname1 = rs.getString("first_name");
                                    lname1 = rs.getString("last_name");
                                }%>
                                <h3> <% /*out.println(fname+" "+lname);*/%></h3>
                <% }
                           }
                         catch (Exception e) {
                            out.println(e);
                        }
                        %>

                	<h3>All Post By  <%out.println(fname1+" "+lname1);%></h3>
                    <div class="product_box margin_r20">
            	
                	<%@ include file="templateview/postshow.jsp" %>
                        <div class="cleaner"></div>
                    </div>
                    
			  
                    
                    
              
                    
      				
                    
                  <div class="cleaner"></div>
                            
                </div>
                <div id="content_bottom"></div>
            
            </div> 
                
            <div class="templatemo_sidebar_wrapper float_r">
                <div class="templatemo_sidebar_top"></div>
                <div class="templatemo_sidebar">
                     
                 <%@ include file="templateview/rightbox.jsp" %>	
                     <!-- end of sidebar_box ( news ) -->
                    
                     <!-- end of sidebar_box ( newsletter ) -->

                </div> <div class="templatemo_sidebar_bottom"></div> <!-- end of sidebar -->
            </div> <!-- end of templatemo_sidebar_wrapper --> 
            
            
          <div class="cleaner"></div>

      </div> <!-- end of templatemo_content_wrapper -->
        
    </div> <!-- end of templatemo_wrapper -->
	    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_body_wrapper -->

<%@ include file="templateview/footer.jsp" %>
    </body>
</html>
