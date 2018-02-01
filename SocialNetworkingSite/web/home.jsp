<%-- 
    Document   : home.jsp
    Created on : Mar 27, 2013, 11:44:47 AM
    Author     : Devlina Datta
--%>

<%@ include file="template/header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


  
    <body>
        <form action="Home" method="post">
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
               
            </div>
        
        </div> <!-- end of templatemo_header -->
        <div id="templatemo_menu">
        
        	<div id="search_box">
              
       </div>  
  <div id="centeredmenu">
	<ul>
		<li><a href="#"></a>
			<ul>
                            <li><a href="#"><b></b></a></li>
                            <li><a href="#"><b></b></a></li>
				
			</ul>
		</li>
        </ul></div>
         <!-- end of templatemo_menu -->
           <img src="images/friendship-60v.jpg" height="400" width="600"/>
            <div class="templatemo_sidebar_wrapper float_r">
                <div class="templatemo_sidebar_top"></div>
                <div class="templatemo_sidebar">
                    <%@include file="template/loginbox.jsp" %>   
                    
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
        </form>
    </body>
</html>
