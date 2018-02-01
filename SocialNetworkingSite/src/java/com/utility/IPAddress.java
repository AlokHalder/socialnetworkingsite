/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility;

import java.net.*;
import java.util.*;
import java.io.*;
import java.nio.*;
 
public class IPAddress {
 public String  getInterfaces (){
     String ipaddr=null;
      try {
         Enumeration e = NetworkInterface.getNetworkInterfaces();
 
         while(e.hasMoreElements()) {
            NetworkInterface ni = (NetworkInterface) e.nextElement();
            System.out.println("Net interface: "+ni.getName());
 
            Enumeration e2 = ni.getInetAddresses();
 InetAddress ip=null;
            while (e2.hasMoreElements()){
               ip = (InetAddress) e2.nextElement();
               System.out.println("IP address: "+ ip.toString());}
            ipaddr=ip.toString();
            
         }
      }
      catch (Exception e) {
         e.printStackTrace();
      }
      return ipaddr;
   }
 
 /*  public static void main(String[] args) {
    IPAddress ip = new IPAddress();
    ip.getInterfaces();
   }*/
}
