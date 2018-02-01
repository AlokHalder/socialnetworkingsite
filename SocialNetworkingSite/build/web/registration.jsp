<%-- 
    Document   : registartion
    Created on : Mar 27, 2013, 11:18:19 AM
    Author     : Devlina Datta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="template/header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>


        <style>
            #t1{font-size:15px ; font-color:yellow}

        </style>

        <script type="text/javascript">
            function check(){
                var v = document.getElementById('pass').value; 
                var v1 = document.getElementById('cpass').value; 
                if(v!=v1 ){
                    alert("Password does not match");
                    
                    return false; 
                   <%-- RequestDispatcher rd = request.getRequestDispatcher("/registration.jsp");
                                rd.forward(request, response); --%>
                }
                return;
            }
        </script>

    </head>
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
                                            <h1> Sign Up </h1>
                                            <form action="Registration" method=post><center>

                                                    <table  align="center" cellpadding="5" cellspacing="5">
                                                        <tr>
                                                            <td>First Name </td>
                                                            <td><input type=text name=n1></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Last Name </td>
                                                            <td><input type=text name=n2></td>
                                                        </tr>
                                                        <tr>
                                                            <td> Email </td>
                                                            <td><input type=text name=n3></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Password </td>
                                                            <td><input type=password name=n4 id="pass"></td>
                                                        </tr>

                                                        <tr>
                                                            <td> Confirm Password </td>
                                                            <td><input type=password name=n5 id="cpass"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>sq</td>  
                                                            <td> <select name=sq>
                                                                    <option value=q1>what is your pet name?</option>

                                                                    <option value=q2>what is your friend name?</option>
                                                                </select></td>
                                                        </tr>

                                                        <tr>
                                                            <td>ans</td>
                                                            <td> <input type=text name=ans></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Date Of Birth:</td>
                                                            <td>
                                                                Day :<select name="day" style="width:70px;">
                                                                    <option value="0">Select</option>
                                                                    <%

                                                                        for (int i = 1; i <= 31; i++) {
                                                                    %>
                                                                    <option value=<%=i%>><%=i%></option>

                                                                    <%
                                                                        }

                                                                    %>
                                                                </select>
                                                                Month :<select name="month" style="width:70px">
                                                                    <option value="00">Select</option>
                                                                    <option value="01">January</option>
                                                                    <option value="02">February</option>
                                                                    <option value="03">March</option>
                                                                    <option value="04">April</option>
                                                                    <option value="05">May</option>
                                                                    <option value="06">June</option>
                                                                    <option value="07">July</option>
                                                                    <option value="08">August</option>
                                                                    <option value="09">September</option>
                                                                    <option value="10">October</option>
                                                                    <option value="11">November</option>
                                                                    <option value="12">December</option>
                                                                </select>

                                                                Year :<select name="year" style="width:70px">
                                                                    <option value="0">Select</option>
                                                                    <%

                                                                        for (int j = 1920; j <= 2020; j++) {
                                                                    %>
                                                                    <option value=<%=j%>><%=j%></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Gender</td>
                                                            <td><input type=radio name=n6 value=Male>Male
                                                                <input type=radio name=n6 value=Female>Female
                                                            </td>
                                                        </tr>
                                                    </table><br><br>
                                                    <input type=submit value=SignUp onclick="check()" onclick="check1()"><br>

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

