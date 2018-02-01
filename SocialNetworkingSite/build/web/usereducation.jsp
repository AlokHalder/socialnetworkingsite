<%-- 
    Document   : usereducation
    Created on : Mar 28, 2013, 12:25:52 PM
    Author     : MISS. MAJUMDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page.......</title>
    </head>
    <body>
        <body bgcolor="grey">
          <%-- <% String username=(String)session.getAttribute("username");
               PreparedStatement pst = null;
            
  try
  {
         Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
         if(con==null)
         {%>
  Connection not created...
  <%}
   else
             {
       %>
       Connection created...
       <%}
  
                     pst=con.prepareStatement ("select * from user_edu_work where user_id=?");
                     pst.setString(1,username);
                     ResultSet rs=pst.executeQuery();
                     if(rs.next())
                         {
                         //out.println("success");
%> --%>
       






        <form action="save2.jsp" method="post">
            <fieldset>
                <legend><em>User Education Information</em></legend>
            <table  cellspacing="5" cellpadding="5" align="center">
               
<tr>
<td>School:</td>
<td><input type=text name=school></td>
</tr>
<tr>
<td> School Pass out Year:</td>

<td>
<select name="spy" width="15">
                                <option value="1970">1970</option>
                                <option value="1971">1971</option>
                                <option value="1972">1972</option>
                                <option value="1973">1973</option>
                                <option value="1974">1974</option>
                                  <option value="1975">1975</option>
                                    <option value="1976">1976</option>
                                    <option value="1977">1977</option>
                                    <option value="1978">1978</option>
                                   <option value="1979">1979</option>
                                   <option value="1980">1980</option>
                                   <option value="1981">1981</option>
                                   <option value="1982">1982</option>
                                   <option value="1983">1983</option>
                                   <option value="1984">1984</option>
                                   <option value="1985">1985</option>
                                   <option value="1986">1986</option>
                                   <option value="1987">1987</option>
                                   <option value="1988">1988</option>
                                <option value="1989">1989</option>
                                <option value="1990">1990</option>
                                <option value="1991">1991</option>
                                <option value="1992">1992</option>
                                <option value="1993">1993</option>
                                <option value="1994">1994</option>
                                <option value="1995">1995</option>
                                <option value="1996">1996</option>
                                <option value="1997">1997</option>
                                <option value="1998">1998</option>
                                <option value="1999">1999</option>
                                <option value="2000">2000</option>
                                <option value="2001">2001</option>
                                <option value="2002">2002</option>
                                <option value="2003">2003</option>
                                <option value="2004">2004</option>
                                <option value="2005">2005</option>
                                <option value="2006">2006</option>
                                <option value="2007">2007</option>
                                <option value="2008">2008</option>
                                <option value="2009">2009</option>
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                               <option value="2013">2013</option>
							   </select>
</td>
</tr>
<tr>
<td>High School:</td>
<td><input type=text name=hs></td>
</tr>
<tr>
<td> High School Pass out Year :</td>
<td>
<select name="hspy" width="15">
                                <option value="1970">1970</option>
                                <option value="1971">1971</option>
                                <option value="1972">1972</option>
                                <option value="1973">1973</option>
                                <option value="1974">1974</option>
                                  <option value="1975">1975</option>
                                    <option value="1976">1976</option>
                                    <option value="1977">1977</option>
                                    <option value="1978">1978</option>
                                   <option value="1979">1979</option>
                                   <option value="1980">1980</option>
                                   <option value="1981">1981</option>
                                   <option value="1982">1982</option>
                                   <option value="1983">1983</option>
                                   <option value="1984">1984</option>
                                   <option value="1985">1985</option>
                                   <option value="1986">1986</option>
                                   <option value="1987">1987</option>
                                   <option value="1988">1988</option>
                                <option value="1989">1989</option>
                                <option value="1990">1990</option>
                                <option value="1991">1991</option>
                                <option value="1992">1992</option>
                                <option value="1993">1993</option>
                                <option value="1994">1994</option>
                                <option value="1995">1995</option>
                                <option value="1996">1996</option>
                                <option value="1997">1997</option>
                                <option value="1998">1998</option>
                                <option value="1999">1999</option>
                                <option value="2000">2000</option>
                                <option value="2001">2001</option>
                                <option value="2002">2002</option>
                                <option value="2003">2003</option>
                                <option value="2004">2004</option>
                                <option value="2005">2005</option>
                                <option value="2006">2006</option>
                                <option value="2007">2007</option>
                                <option value="2008">2008</option>
                                <option value="2009">2009</option>
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                               <option value="2013">2013</option>
							   </select>
</td>
</tr>


<tr>
 <td> Graduation College:</td>
<td><input type=text name=gc></td>
</tr>
<tr>
<td>Graduation Pass out Year:</td>
<td>
<select name="gpy" width="15">
                                <option value="1970">1970</option>
                                <option value="1971">1971</option>
                                <option value="1972">1972</option>
                                <option value="1973">1973</option>
                                <option value="1974">1974</option>
                                  <option value="1975">1975</option>
                                    <option value="1976">1976</option>
                                    <option value="1977">1977</option>
                                    <option value="1978">1978</option>
                                   <option value="1979">1979</option>
                                   <option value="1980">1980</option>
                                   <option value="1981">1981</option>
                                   <option value="1982">1982</option>
                                   <option value="1983">1983</option>
                                   <option value="1984">1984</option>
                                   <option value="1985">1985</option>
                                   <option value="1986">1986</option>
                                   <option value="1987">1987</option>
                                   <option value="1988">1988</option>
                                <option value="1989">1989</option>
                                <option value="1990">1990</option>
                                <option value="1991">1991</option>
                                <option value="1992">1992</option>
                                <option value="1993">1993</option>
                                <option value="1994">1994</option>
                                <option value="1995">1995</option>
                                <option value="1996">1996</option>
                                <option value="1997">1997</option>
                                <option value="1998">1998</option>
                                <option value="1999">1999</option>
                                <option value="2000">2000</option>
                                <option value="2001">2001</option>
                                <option value="2002">2002</option>
                                <option value="2003">2003</option>
                                <option value="2004">2004</option>
                                <option value="2005">2005</option>
                                <option value="2006">2006</option>
                                <option value="2007">2007</option>
                                <option value="2008">2008</option>
                                <option value="2009">2009</option>
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                               <option value="2013">2013</option>
							   </select>
</td>
</tr>


<tr>
<td>Post Graduate Collage:</td>
<td><input type=text name=pgc></td>
</tr>

<tr>
<td>Post Graduation Pass out Year:</td>
<td>
<select name="pgpy" width="15">
                                <option value="1970">1970</option>
                                <option value="1971">1971</option>
                                <option value="1972">1972</option>
                                <option value="1973">1973</option>
                                <option value="1974">1974</option>
                                  <option value="1975">1975</option>
                                    <option value="1976">1976</option>
                                    <option value="1977">1977</option>
                                    <option value="1978">1978</option>
                                   <option value="1979">1979</option>
                                   <option value="1980">1980</option>
                                   <option value="1981">1981</option>
                                   <option value="1982">1982</option>
                                   <option value="1983">1983</option>
                                   <option value="1984">1984</option>
                                   <option value="1985">1985</option>
                                   <option value="1986">1986</option>
                                   <option value="1987">1987</option>
                                   <option value="1988">1988</option>
                                <option value="1989">1989</option>
                                <option value="1990">1990</option>
                                <option value="1991">1991</option>
                                <option value="1992">1992</option>
                                <option value="1993">1993</option>
                                <option value="1994">1994</option>
                                <option value="1995">1995</option>
                                <option value="1996">1996</option>
                                <option value="1997">1997</option>
                                <option value="1998">1998</option>
                                <option value="1999">1999</option>
                                <option value="2000">2000</option>
                                <option value="2001">2001</option>
                                <option value="2002">2002</option>
                                <option value="2003">2003</option>
                                <option value="2004">2004</option>
                                <option value="2005">2005</option>
                                <option value="2006">2006</option>
                                <option value="2007">2007</option>
                                <option value="2008">2008</option>
                                <option value="2009">2009</option>
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                               <option value="2013">2013</option>
							   </select>
</td>
</tr>
 <tr>
<td>Works In: </td>
<td><input type=text name=work></td>
</tr>
<tr>
    <td>designation </td>
    <td><input type=text name=dsg></td>
</tr>
</tbody>
            </table>
            </fieldset>
            <table align="right">
                <tr>
                    <td><input type="submit" value="Save" color="blue"></td>
  
                    
                    <%--  <%}
                     else
                                             {
                        out.println("unsuccessful");
                     }
                     }catch(Exception e){}
            %>--%>

                </tr>
            </table>
        </form>
 </body>
</html>
