<%-- 
    Document   : profilenotfriend
    Created on : Apr 18, 2013, 10:16:52 PM
    Author     : Devlina Datta
--%>

<%@ page import="java.sql.*"%>
<%@ page import="com.Connection.DBconnection" %>

<%@ include file="templatenotfriend/header.jsp" %>
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
                            String username = (String) ses.getAttribute("username");
                            if (con == null) {
                                System.out.println("Connection not created");
                                } 
                               else {
                                /*out.println("connection created..."+ username);*/
                                String q1 = "select first_name,last_name from user_details where user_id=?";
                                pstmt = con.prepareStatement(q1);

                                pstmt.setString(1, username);

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
      
        <div id="templatemo_menu">
        
        	<div id="search_box">
              <form name="f1" action="Friendrequest" method="post">
                    
                    <input type="submit" name="login" value="+Add friend" alt="login" id="submit_btn" title="Login" />
              </form>
                </div>
       </div>  
         <!-- end of templatemo_menu -->
        <div id="templatemo_content_wrapper">
        	
            <div class="templatemo_sidebar_wrapper float_l">
                <div class="templatemo_sidebar_top"></div>
                <div class="templatemo_sidebar">
                    <div class="sidebar_box">
                    
                  
                        
                   <%@ include file="templatenotfriend/leftupper.jsp" %>
                
                  <%@ include file="templatenotfriend/leftbox.jsp" %>
                
                        
                
                </div> <div class="templatemo_sidebar_bottom"></div> <!-- end of sidebar -->
            </div> <!-- end of templatemo_sidebar_wrapper --> 
            
            <div id="templatemo_content">
            	
                <div id="banner">
                    <a href="http://www.templatemo.com/preview/templatemo_173_store" target="_parent"><img src="img/NatureShots464.jpg" alt="banner" width="540" height="150"/></a>                
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
                            String uname1 =request.getParameter("unknown");;
                            HttpSession session2=request.getSession();
                            session2.setAttribute("name", uname1);
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

                    <h3>All Posts By <% out.println(fname1+" "+lname1); %></h3>
                    <div class="product_box margin_r20">
            	
                		<%@ include file="templatenotfriend/postshow.jsp" %>
                        
                        <div class="cleaner"></div>
                    </div>
                    
			  
                    
                    
              
      				
                    
                  <div class="cleaner"></div>
                            
                </div>
                <div id="content_bottom"></div>
            
            </div> 
                
            <div class="templatemo_sidebar_wrapper float_r">
                <div class="templatemo_sidebar_top"></div>
                <div class="templatemo_sidebar">
                     
                 <%@ include file="templatenotfriend/rightbox.jsp" %>	
                     <!-- end of sidebar_box ( news ) -->
                    
                     <!-- end of sidebar_box ( newsletter ) -->

                </div> <div class="templatemo_sidebar_bottom"></div> <!-- end of sidebar -->
            </div> <!-- end of templatemo_sidebar_wrapper --> 
            
            
          <div class="cleaner"></div>

      </div> <!-- end of templatemo_content_wrapper -->
        
    </div> <!-- end of templatemo_wrapper -->
	    
    <div class="cleaner"></div>
</div> <!-- end of templatemo_body_wrapper -->

<%@ include file="templatenotfriend/footer.jsp" %>
    </body>
</html>

