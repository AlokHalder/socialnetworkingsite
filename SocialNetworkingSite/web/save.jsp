<%--
    Document   : add
    Created on : Mar 27, 2013, 9:39:58 PM
    Author     : MISS. MAJUMDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%--<%@ include file="connect.jsp" %>--%>
<%
     
          try{
   Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
   if(con==null)
   {%>
   connection not created
   <%
   }
   else{
        %>
        connection created
        <%
		String bs=request.getParameter("bday")+"-"+request.getParameter("bmonth")+"-"+request.getParameter("byear");
        
           String fname=request.getParameter("t1");
           String lname=request.getParameter("t2");
           String sx=request.getParameter("sex");
           String ph=request.getParameter("t3");
           String eml=request.getParameter("t4");
           String add=request.getParameter("t5");
           String lin=request.getParameter("t6");
           //out.println(fname+lname+bs+sx+ph+eml+add+lin);
		
           PreparedStatement  pst = con.prepareStatement("update user_details set first_name =?,last_name =?,dob =?,sex =?,ph_no =?,email =?,address=?,lives_in=? where user_id=?");
           
           pst.setString(1,fname);
           pst.setString(2,lname);
           pst.setString(3,bs);
           pst.setString(4,sx);
           pst.setString(5,ph);
           pst.setString(6,eml);
           pst.setString(7,add);
           pst.setString(8,lin);
           pst.setString(9, eml);
		
           int t=pst.executeUpdate();
		
           if(t==1)
                             {
               RequestDispatcher rd = request.getRequestDispatcher("/static.jsp");
             rd.forward(request, response);
           }
          // out.println("<h1>update Successfully</h1>");
		
           //con.close();
        }   }
           catch(Exception e)
           {}
  %>

 

  
