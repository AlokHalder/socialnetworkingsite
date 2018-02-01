<%-- 
    Document   : forgotpass
    Created on : Mar 27, 2013, 11:53:55 AM
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
        <form action="Forgotpass" method="post"><center> 
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
                                <p> </p>


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

                                                    <h1> Password Recovery!!!</h1>
                                                    <merque><h4> Please enter your details correctly for the recovery of your password</h4></merque>
                                                    <table align="center" cellpadding="10" cellspacing="10" width="80%">
                                                        <tr>
                                                            <td align="left">Email : </td>
                                                            <td align="right"><input type="email" name="userEmail" style="size:100px" required/></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">Security question : </td>  
                                                            <td align="right"> <select name=sq style="size:80px">
                                                                    <option value=q1>what is your pet name?</option>

                                                                    <option value=q2>what is your friend name?</option>
                                                                </select></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left">Answer : </td>

                                                            <td align="right"> <input type=text name=ans style="size:100px"></td>
                                                        </tr>
                                                    </table><br><br>

                                                    <input type=submit value=Submit><br>

                                                    <a href=home.jsp><h4>Back</h4></a>
                                                    </form>
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

                <%@ include file="template/footer.jsp" %>
                </body>
                </html>

