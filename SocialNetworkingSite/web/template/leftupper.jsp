<%-- 
    Document   : leftupper
    Created on : Apr 4, 2013, 11:48:52 AM
    Author     : Administrator
--%>

<%@page import="com.Connection.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="sidebar_box">
            <% DBconnection dbConl1 = new DBconnection();
                PreparedStatement pstmtl1 = null;
                String fnamel1 = null;
                String lnamel1 = null;
                try {
                    Connection conl1 = dbConl1.createCon();
                    HttpSession ses = request.getSession();
                    String username = (String) ses.getAttribute("username");
                    if (conl1 == null) {
                        System.out.println("Connection not created");
                    } else {
                        /*out.println("connection created..."+ username);*/
                        String q1 = "select first_name,last_name from user_details where user_id=?";
                        pstmtl1 = conl1.prepareStatement(q1);

                        pstmtl1.setString(1, username);

                        ResultSet rsl1 = pstmtl1.executeQuery();
                        if (rsl1.next()) {
                            fnamel1 = rsl1.getString("first_name");
                            lnamel1 = rsl1.getString("last_name");
                        }%>

            <h2> <%= fnamel1 + " " + lnamel1%></h2>
            <% }
                } catch (Exception e) {
                    out.println(e);
                }




            %>    

            <div class="sidebar_box_content">
                <%
                    String uid = (String) session.getAttribute("username");
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "MANAGER");
                    PreparedStatement stmt = conn.prepareStatement("SELECT PICTURE_PATH FROM PROFILE_PIC WHERE USER_ID=?");
                    stmt.setString(1, uid);
                    ResultSet rss = stmt.executeQuery();
                    while (rss.next()) {
                        String picpath = rss.getString(1);
                        //out.println(picpath);
                %>
                <img src="<%= picpath%>" width="160" height="100" />
                <%}%>

                <%-- <a href="#"><img src="<%= session.getAttribute("username") %>/<%= session.getAttribute("profilePic") %>" alt="<%= session.getAttribute("username")%>" width="160" height="120" /></a>--%>


                <p><center><a href="profilepicupload.jsp"> Change Profile Picture</a></p>



                    <div class="cleaner"></div>
            </div>

        </div> 
    </div>

</body>
</html>
