function registerwithquery()
{
	
   var myArray=new Array();

    myArray[0] = "threadtype,Select Thread Type"; 
    myArray[1] = "f_name,Enter First Name";
	myArray[2] = "s_name,Enter Last Name";
    myArray[3] = "p_email,Enter email";
	
	myArray[4] = "city,Enter city";
	myArray[5] = "state,Enter state";
	myArray[6] = "pin,Enter pin";
	myArray[7] = "country,Select country";
	myArray[8] = "query_ques,Enter query";
	
	 message1="";
    mylen=myArray.length;
    //alert(mylen);
     for(x=0; x<mylen; x++)
    {
           var fvalue=myArray[x];
           var name=myArray[x].split(",");
           //alert(fvalue);
           //alert(name);
           //alert(name[0]);
           var message='Please '; 
		   
		   if(document.getElementById(name[0]).value!='' && name[0]=='p_email')
           {
               if (echeck(document.getElementById("p_email").value)=='')
               {
                   message1=message1+'Invalid email'+'.'+'<br />';
                }
           }
         

           if(trimAll(document.getElementById(name[0]).value)=="")
          {
              message1=message1+message+name[1]+'.'+'<br />';
          }

    }

     if(message1!='')
    {
    //alert(message1);
	   document.getElementById("alert").style.display="block";
       document.getElementById("alert").innerHTML=message1;
       return false;
    }else{
    return true;
	  // return false;
    }
	
	
}

function newthreadenquery()
{
	
   var myArray=new Array();
	myArray[0] = "query_ques,Enter your query";
	
	 message1="";
    mylen=myArray.length;
    //alert(mylen);
     for(x=0; x<mylen; x++)
    {
           var fvalue=myArray[x];
           var name=myArray[x].split(",");
           //alert(fvalue);
           //alert(name);
           //alert(name[0]);
           var message='Please '; 

           if(trimAll(document.getElementById(name[0]).value)=="")
          {
              message1=message1+message+name[1]+'.'+'<br />';
          }

    }

     if(message1!='')
    {
    //alert(message1);
	   document.getElementById("alert").style.display="block";
       document.getElementById("alert").innerHTML=message1;
       return false;
    }else{
    return true;
	  // return false;
    }
	
	
}

function enquiryLogin()
{
	
   var myArray=new Array();
	myArray[0] = "user_loginemail,Enter your email";
	myArray[1] = "user_loginpass,Enter your password";
	 message1="";
    mylen=myArray.length;
    //alert(mylen);
     for(x=0; x<mylen; x++)
    {
           var fvalue=myArray[x];
           var name=myArray[x].split(",");
           //alert(fvalue);
           //alert(name);
           //alert(name[0]);
           var message='Please '; 
		   
		   if(document.getElementById(name[0]).value!='' && name[0]=='user_loginemail')
           {
               if (echeck(document.getElementById("user_loginemail").value)=='')
               {
                   message1=message1+'Invalid email'+'.'+'<br />';
                }
           }

           if(trimAll(document.getElementById(name[0]).value)=="")
          {
              message1=message1+message+name[1]+'.'+'<br />';
          }

    }

     if(message1!='')
    {
    //alert(message1);
	   document.getElementById("alert").style.display="block";
       document.getElementById("alert").innerHTML=message1;
       return false;
    }else{
    return true;
	  // return false;
    }
	
	
}


function oldthreadenquery()
{
	
   var myArray=new Array();
  
	myArray[0] = "query_ques,Enter query";
	
	 message1="";
    mylen=myArray.length;
    //alert(mylen);
     for(x=0; x<mylen; x++)
    {
           var fvalue=myArray[x];
           var name=myArray[x].split(",");
           //alert(fvalue);
           //alert(name);
           //alert(name[0]);
           var message='Please '; 

           if(trimAll(document.getElementById(name[0]).value)=="")
          {
              message1=message1+message+name[1]+'.'+'<br />';
          }

    }

     if(message1!='')
    {
    //alert(message1);
	   document.getElementById("alert").style.display="block";
       document.getElementById("alert").innerHTML=message1;
       return false;
    }else{
    return true;
	  // return false;
    }
	
	
}


function checkforgotpass()
{
	var myArray=new Array();
	myArray[0] = "emailid,Enter your email";
	
	 message1="";
    mylen=myArray.length;
    //alert(mylen);
     for(x=0; x<mylen; x++)
    {
           var fvalue=myArray[x];
           var name=myArray[x].split(",");
           //alert(fvalue);
           //alert(name);
           //alert(name[0]);
           var message='Please '; 
		   
		   if(document.getElementById(name[0]).value!='' && name[0]=='emailid')
           {
               if (echeck(document.getElementById("emailid").value)=='')
               {
                   message1=message1+'Invalid email'+'.'+'<br />';
                }
           }

           if(trimAll(document.getElementById(name[0]).value)=="")
          {
              message1=message1+message+name[1]+'.'+'<br />';
          }

    }

     if(message1!='')
    {
    //alert(message1);
	   document.getElementById("alert").style.display="block";
       document.getElementById("alert").innerHTML=message1;
       return false;
    }else{
    return true;
	  // return false;
    }
}


function trimAll(sString)

{

while (sString.substring(0,1) == ' ')

{

sString = sString.substring(1, sString.length);

}

while (sString.substring(sString.length-1, sString.length) == ' ')

{

sString = sString.substring(0,sString.length-1);

}

return sString;

}




function echeck(str) {

                  var at="@"


                  var dot="."


                  var lat=str.indexOf(at)


                  var lstr=str.length


                  var ldot=str.indexOf(dot)


                  if (str.indexOf(at)==-1){


                     //alert("Invalid E-mail ID")


                     return false


                  }

                  if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){


                     //alert("Invalid E-mail ID")


                     return false


                  }


                  if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){


                      //alert("Invalid E-mail ID")


                      return false


                  }

                   if (str.indexOf(at,(lat+1))!=-1){


                      //alert("Invalid E-mail ID")


                      return false


                   }


                   if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){


                      //alert("Invalid E-mail ID")


                      return false


                   }

                   if (str.indexOf(dot,(lat+2))==-1){


                      //alert("Invalid E-mail ID")


                      return false


                   }
                   
                   if (str.indexOf(" ")!=-1){


                      //alert("Invalid E-mail ID")


                      return false


                   }

                    return true          


                }
