<%-- 
    Document   : wall
    Created on : Apr 20, 2013, 9:24:07 PM
    Author     : Devlina Datta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : profileview
    Created on : Apr 13, 2013, 1:40:11 AM
    Author     : Devlina Datta
--%>

<%@ page import="java.sql.*"%>
<%@ page import="com.Connection.DBconnection" %>

<%@ include file="templateview/header.jsp" %>



<html>
    <body>
        <div id="templatemo_body_wrapper">
	<div id="templatemo_wrapper"">
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
                	<h3>All Post </h3>
                        <center>
                    <div class="product_box margin_r20" >
            	
                	<%@ include file="wallpost.jsp" %>
                        <div class="cleaner"></div>
                    </div>
                    
                        </center>  

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
            
<%@ include file="templateview/footer.jsp" %>
    </body>
</html>
