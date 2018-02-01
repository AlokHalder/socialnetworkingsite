<%-- 
    Document   : UserBasicDetails
    Created on : Mar 26, 2013, 10:07:50 AM
    Author     : Devlina Datta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter your </title>
    </head>
    <body >
        
           <% String username=(String)session.getAttribute("username");
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
  
                     pst=con.prepareStatement ("select * from user_details where user_id=?");
                     pst.setString(1,username);
                     ResultSet rs=pst.executeQuery();
                     if(rs.next())
                         {
                         //out.println("success");
                         %> 
       
                     <form action="save.jsp" method="post">
            <fieldset>
                <legend><em>Basic Details</em></legend>
            <table  cellspacing="5" cellpadding="5" align="center">
 
                <tbody>
                    <tr>
                        <td>First Name :</td>
                        <td><input type="text" name="t1" value=<%=rs.getString(2)%> </td>
                    </tr>
                    <tr>
                        <td>Last Name :</td>
                        <td><input type="text" name="t2" value=<%=rs.getString(3)%> </td>
                    </tr>
                    <tr>
                        <td>Birthday :</td>
                        <td>
                            Day <select name="bday" width="15">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="1">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                            </select>
                            Month <select name="bmonth" width="15">
                                <option value="January">January</option>
                                <option value="February">February</option>
                                <option value="March">March</option>
                                <option value="April">April</option>
                                <option value="May">May</option>
                                <option value="June">June</option>
                                <option value="July">July</option>
                                <option value="August">August</option>
                                <option value="September">September</option>
                                <option value="October">October</option>
                                <option value="November">November</option>
                                <option value="December">December</option>
                            </select>
                            Year <select name="byear" width="15">
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
                        <td>Sex :</td>
                        <td><select name="sex">
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                           </td>
                    </tr>
                    <tr>
                        <td>Contact Number :</td>
                        <td><input type="text" name="t3"></td>
                    </tr>
                    <tr>
                        <td>Email Address : </td>
                        <td><input type="text" name="t4" value=<%=rs.getString(7)%>></td>
                    </tr>
                    <tr>
                        <td>Permanent Address :</td>
                        <td><textarea name="t5" rows="5" cols="20"></textarea></td>
                    </tr>
                    <tr>
                        <td>Currently Lives In :</td>
                        <td><input type="text" name="t6"></td>
                    </tr>
                </tbody>
            </table>
            </fieldset>
            <table align="right">
                <tr>
                    
                    <td><input type="submit" name="v1" value="save"></td>
                    
                    <%}
                     else
                                             {
                        out.println("unsuccessful");
                     }
                     }catch(Exception e){}
            %>
                </tr>
            </table>
        </form>
</div>
    </body>
</html>
