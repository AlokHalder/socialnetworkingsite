/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Abc
 */
public class DateConversion extends HttpServlet {

    public static String convertDbDate(String inputDate) {
       
        StringBuilder returnDate = new StringBuilder();
        if (null != inputDate) {
            String year = inputDate.substring(0, 4);
            String month = inputDate.substring(5, 7);
            String day = inputDate.substring(8, 10);
            String time = inputDate.substring(11, inputDate.length());

            returnDate.append(day);
            returnDate.append("-");
            returnDate.append(month);
            returnDate.append("-");
            returnDate.append(year);
            returnDate.append(" ");
            returnDate.append(time);
        }
        return returnDate.toString();
    }
    
    public static void main(String[] args) {
         String inputDate = "2013-04-21 16:43:24";
        System.out.println(" Date Val : "+    convertDbDate(inputDate));
     
    }
}
