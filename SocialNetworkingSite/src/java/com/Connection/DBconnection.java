/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
    
    public static Connection createCon()
   {
       Connection con=null; 
       try{
       
      /* Class.forName("oracle.jdbc.driver.OracleDriver");
       con = DriverManager.getConnection("jdbc:oracle:thin:@localhost","SYSTEM","MANAGER");
       */
        Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();

        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","MANAGER");
        System.out.println("Connected to the database");
       }catch(Exception e){System.out.println(e);}
       return con;
    }

}
