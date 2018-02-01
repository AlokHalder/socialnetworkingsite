<%-- 
    Document   : viewprofile
    Created on : Apr 23, 2013, 1:21:15 AM
    Author     : Devlina Datta
--%>

<%@ page import="java.sql.*"%>
<%@ page import="com.Connection.DBconnection"%>

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
            	<h3>welcome</h3>
                <p><% 
                
                        DBconnection dbCon1 = new DBconnection();
                        PreparedStatement pstmt1 = null;
                        String fname1=null;
                        try {
                            Connection con1 = dbCon1.createCon();
                            HttpSession ses = request.getSession();
                            String username = (String) ses.getAttribute("username");
                            if (con1 == null) {
                                System.out.println("Connection not created");
                                } 
                               else {
                                /*out.println("connection created..."+ username);*/
                                String q1 = "select first_name from user_details where user_id=?";
                                pstmt1 = con1.prepareStatement(q1);

                                pstmt1.setString(1, username);

                                ResultSet rs1 = pstmt1.executeQuery();
                                if (rs1.next())
                                {                                    
                                    fname1 = rs1.getString("first_name");
                                }%>

                <h3> <% out.println(fname1);%></h3>
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
                    
                  
                     <form action="Picupload" method="post"
              enctype="multipart/form-data">    
                   <%@ include file="templateview/leftupper.jsp" %>
                     </form>
                  <%@ include file="templateview/leftbox.jsp" %>
                
                        
                
                </div> <div class="templatemo_sidebar_bottom"></div> <!-- end of sidebar -->
            </div> <!-- end of templatemo_sidebar_wrapper --> 
            
            <div id="templatemo_content">
            	
                <div id="banner">
                    <a href="http://www.templatemo.com/preview/templatemo_173_store" target="_parent"><img src="img/sunrise1.jpg" alt="banner" width="540" height="150"/></a>                
                </div>
            
           	  <div id="content_top"></div>
                <div id="content_middle">
                	<h3>Share your thought </h3>
                    <div class="product_box margin_r20">
            	
               
                 <%/*@ include file="post.jsp" */%>
                 <form action="postsuc.jsp" method="post">
            
             <textarea name="t1" rows="2" cols="50"></textarea><br>
            
                <input type="submit"  value="post"/>
                        
                 </form>      
                        <div class="cleaner"></div>
                    </div>
                    
			  
                    
                    
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

<%@ include file="template/footer.jsp" %>
    </body>
</html>
