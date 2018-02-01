<%-- 
    Document   : leftbox
    Created on : Apr 4, 2013, 11:45:53 AM
    Author     : Administrator
--%>
<%@page import="com.Connection.DBconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <div class="sidebar_box">
            
                        <h2>About :</h2>
                        <div class="sidebar_box_content">
                        
                            <ul class="categories_list">
                                <% DBconnection dbConlb = new DBconnection();
                        PreparedStatement pstmtlb = null;
                        PreparedStatement pstmtlb1 = null;
                        PreparedStatement pstmtlb2 = null;
                        String grad = null;
                        String gradyr = null;
                        String works = null;
                        String desig = null;
                        String about = null;
                        String relation = null;
                        String quote = null;
                        String dob = null;
                        String sex = null;
                        String email = null;
                        String address = null;
                        String livesin = null;
                        try {
                            Connection conlb = dbConlb.createCon();
                            String uname =request.getParameter("friendid");
                            /*out.println(uname);*/
                            if (conlb == null) {
                                System.out.println("Connection not created");
                            } else {
                                /*out.println("connection created..."+ username);*/
                                String q1 = "select grad_colg,grad_passout_yr,works_in,designation from user_edu_work where user_id=?";
                                pstmtlb = conlb.prepareStatement(q1);

                                pstmtlb.setString(1, uname);

                                ResultSet rslb = pstmtlb.executeQuery();
                                if (rslb.next()) {
                                    grad = rslb.getString("grad_colg");
                                    gradyr = rslb.getString("grad_passout_yr");
                                    works = rslb.getString("works_in");
                                    /* if(works==null)
                                     works= "not specified;*/
                                    desig = rslb.getString("designation");
                                    /*out.println(grad + gradyr + works + desig);*/
                                   
                                }

                               String q2 = "select about_you,relationship_status,fav_quotes from user_info where user_id=?";
                                pstmtlb1 = conlb.prepareStatement(q2);

                                pstmtlb1.setString(1, uname);

                                ResultSet rslb1 = pstmtlb1.executeQuery();
                                if (rslb1.next()) {
                                    about = rslb1.getString("about_you");
                                    relation = rslb1.getString("relationship_status");
                                    quote = rslb1.getString("fav_quotes");
                                    /*out.println(about + relation + quote);*/
                                }

                                String q3 = "select dob,sex,email,address,lives_in from user_details where user_id=?";
                                pstmtlb2 = conlb.prepareStatement(q3);

                                pstmtlb2.setString(1, uname);

                                ResultSet rslb2 = pstmtlb2.executeQuery();
                                if (rslb2.next()) {
                                    dob = rslb2.getString("dob");
                                    sex = rslb2.getString("sex");
                                    email = rslb2.getString("email");
                                    address = rslb2.getString("address");
                                    livesin = rslb2.getString("lives_in");
                                    /*out.println(dob + sex + email + address + livesin);*/
                                }

                    %>    

                    <li><h4>Works In :</h4><%= works%></li>
                    <li><h4>Designation :</h4><%=desig%></li>
                    <li><h4>Current Location :</h4><%=livesin%></li>
                    <li><h4>Originally From :</h4><%=address%></li>
                    <li><h4>Graduation School :</h4><%=grad%></li>
                    <li><h4>Passout Year :</h4><%=gradyr%></li>
                    <li><h4>Sex :</h4><%=sex%></li>
                    <li><h4>Date of Birth :</h4><%=dob%></li>
                    <li><h4>Email :</h4><%=email%></li>
                    <li><h4>Relationship Status :</h4><%=relation%></li>
                    <li><h4>Favourite Quote :</h4><%=quote%></li>

                    <%    }
                            } catch (Exception e) {
                                out.println(e);
                            }%>
                            </ul>
                            
                         </div>
    
                    </div>
    </body>
</html>
