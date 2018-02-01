<%-- 
    Document   : rightupper
    Created on : Apr 4, 2013, 11:54:46 AM
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
        <div class="sidebar_box">
                    
                    	<h2>Login into your account</h2>
                        
                        <div class="sidebar_box_content">
                        
                        	<div id="newsletter_box">
                            
                                <form action="#" method="get">
                                    <label> Enter your username and pasword</label>
                                    Username :<input type="text" value="" name="n1" size="10" class="input_field" title="usernmae" />
                                    Password :<input type="password" value="" name="n2" size="10" class="input_field" title="password" />
                                    <input type="submit" name="login" value="Login" alt="login" class="submit_btn" title="Login" /><br></br>
                                    <a href=forgotpass.jsp><h4>forgot password</h4></a>
                                    <a href=registration.jsp><h4>new user</h4></a>
                                </form>
                        	</div>
                            
                            <div class="cleaner"></div>
                            
                        </div>
                    
                    </div>
    </body>
</html>
