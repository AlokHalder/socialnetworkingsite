<%-- 
    Document   : menu
    Created on : Apr 4, 2013, 11:40:07 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="templatemo_menu">
        
        	<div id="search_box">
              <form action="#" method="get">
                    <input type="text" value="" name="username" size="10" id="input_field" title="usernmae" />
                    <input type="submit" name="login" value="Search" alt="login" id="submit_btn" title="Login" />
              </form>
            </div>  
                  
            <ul>
                <li><a href="#" class="current">dashboard</a></li>
                
                <li><a href="#">manage</a></li>
                <li><a href="subpage.html">wall</a></li>
                <li><a href="message.jsp">massege</a>
                <ul>
		<li><a href="#">add</a></li>
		<li><a href="#">delete</a></li>
	        </ul> </li>
                <li><a href="viewmessage.jsp">massegeview</a></li>
                <li><a href="subpage.html">Your profile</a></li>
                <li><a href="index.html">friendlist</a></li>
            </ul>    	
        
        </div>
     
    </body>
</html>
