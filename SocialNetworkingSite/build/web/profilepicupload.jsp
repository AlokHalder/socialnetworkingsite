<%-- 
    Document   : profilepicupload
    Created on : Apr 20, 2013, 3:21:19 PM
    Author     : Devlina Datta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="template/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Pictureupload" method="post" enctype="multipart/form-data">
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
                                <label txtcolor="white">  <h3><a href="profile.jsp">My Profile</a></h3></label>


                            </div>

                        </div> <!-- end of templatemo_header -->

                       <div id="templatemo_menu"> 

                            <div id="search_box">
                            </div>
                            
                        </div>  
                        <!-- end of templatemo_menu -->
                        <table align="center" width="60%"><tr><td>
                                    <div id="templatemo_content_wrapper">

                                        <div class="templatemo_sidebar_wrapper float_l">





                                            <!-- end of sidebar -->
                                        </div> <!-- end of templatemo_sidebar_wrapper --> 

                                        <div id="templatemo_content">

                                            <div id="banner">

                                            </div>

                                            <div id="content_top"></div>
                                            <div id="content_middle">
                                                <div class="product_box margin_r20">

            <br><input type="file" name="file" style="width:200px" /><br></br>  
        <br><input type="submit" value="Picture Upload" />
        
   <div class="cleaner"></div>
                                                </div>
                                                <div class="cleaner"></div>

                                            </div>
                                            <div id="content_bottom"></div>

                                        </div> 

                                        <div class="templatemo_sidebar_wrapper float_r">



                                            <!-- end of sidebar_box ( news ) -->

                                            <!-- end of sidebar_box ( newsletter ) -->

                                            <!-- end of sidebar -->
                                        </div> <!-- end of templatemo_sidebar_wrapper --> 


                                        <div class="cleaner"></div>

                                    </div> <!-- end of templatemo_content_wrapper -->
                                </td></tr>
                        </table>
                    </div> <!-- end of templatemo_wrapper -->

                    <div class="cleaner"></div>
                </div> <!-- end of templatemo_body_wrapper -->

        </form>
                </body>
                </html>

