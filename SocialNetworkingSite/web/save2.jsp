<%-- 
    Document   : save2
    Created on : Mar 29, 2013, 1:58:36 PM
    Author     : MISS. MAJUMDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>

 <%
     
			
    try {
        Class.forName("oracle.jdbc.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
        if (con == null) {%>
connection not created
<%           } else {


            HttpSession hs = request.getSession();
            String userid = (String) hs.getAttribute("username");
            
            String school=request.getParameter("school");
           String spy=request.getParameter("spy");
           String hs1=request.getParameter("hs");
           String hspy=request.getParameter("hspy");
           String gc=request.getParameter("gc");
           String gpy=request.getParameter("gpy");
           String pgc=request.getParameter("pgc");
           String pgpy=request.getParameter("pgpy");
           String work=request.getParameter("work");
           String dsg=request.getParameter("dsg");
          
            out.println(gc);
			//String bs=request.getParameter("bday")+"-"+request.getParameter("bmonth")+"-"+request.getParameter("byear");
           PreparedStatement  pst = con.prepareStatement("update  user_edu_work  set school =?,sc_passout_yr =?,high_school =?,hs_passout_yr =?,grad_colg =?,grad_passout_yr =?,pg_colg =?,pg_passout_yr =?,works_in= ?,designation =? where user_id=?");
           
           //pst.setString(2,request.getParameter("school"));
           //pst.setString(3,request.getParameter("spy"));
           //pst.setString(4,request.getParameter("hs"));
           //pst.setString(5,request.getParameter("hspy"));
           //pst.setString(6,request.getParameter("gc"));
           //pst.setString(7,request.getParameter("gpy"));
           //pst.setString(8,request.getParameter("pgc"));
           //pst.setString(9,request.getParameter("pgpy"));
           //pst.setString(10,request.getParameter("work"));
           //pst.setString(11,request.getParameter("dsg"));
           pst.setString(1,school);
           pst.setString(2,spy);
           pst.setString(3,hs1);
           pst.setString(4,hspy);
           pst.setString(5,gc);
           pst.setString(6,gpy);
           pst.setString(7,pgc);
           pst.setString(8,pgpy);
           pst.setString(9, work);
            pst.setString(10, dsg);
            pst.setString(11, userid);
           int t=pst.executeUpdate();
           if(t>0)
                             {

              RequestDispatcher rd = request.getRequestDispatcher("/static2.jsp");
             rd.forward(request, response);
           //out.println("<h1>updated Successfully</h1>");
                         }
           con.close();
           }
               }
           catch(Exception e)
           {}
  %>