<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-GB">
<head>
	
<style type="text/css" media="screen">

/* Main menu settings */
#centeredmenu {
   clear:both;
   float:left;
   margin:0;
   padding:0;
  /* border-bottom:1px solid #000; /* black line below menu */
   width:100%;
   font-family:Verdana, Geneva, sans-serif; /* Menu font */
   font-size:90%; /* Menu text size */
   z-index:1000; /* This makes the dropdown menus appear above the page content below */
   position:relative;
}

/* Top menu items */
#centeredmenu ul {
   margin:0;
   padding:0;
   list-style:none;
   float:right;
   position:relative;
   right:50%;
}
#centeredmenu ul li {
   margin:0 0 0 1px;
   padding:0;
   float:left;
   position:relative;
   left:50%;
   top:1px;
}
#centeredmenu ul li a {
   display:block;
   margin:0;
   padding:.6em .5em .4em;
   font-size:1em;
   line-height:1em;
   
   text-decoration:none;
   color:#444;
   font-weight:bold;
  /* border-bottom:1px solid #000;*/
}
#centeredmenu ul li.active a {
   color:#fff;
   background:#000;
}
#centeredmenu ul li a:hover {
    /* Top menu items background colour */
   color:#fff;
  /* border-bottom:1px solid #03f;*/
}
#centeredmenu ul li:hover a,
#centeredmenu ul li.hover a { /* This line is required for IE 6 and below */
   background:#36f; /* Top menu items background colour */
   color:#fff;
 /*  border-bottom:1px solid #03f;*/
   width:100px;
}

/* Submenu items */
#centeredmenu ul ul {
   display:none; /* Sub menus are hiden by default */
   position:absolute;
   top:2em;
   left:0;
   right:auto; /*resets the right:50% on the parent ul */
   width:10em; /* width of the drop-down menus */
}
#centeredmenu ul ul li {
   left:auto;  /*resets the left:50% on the parent li */
   margin:0; /* Reset the 1px margin from the top menu */
   clear:left;
   width:100%;
}
#centeredmenu ul ul li a,
#centeredmenu ul li.active li a,
#centeredmenu ul li:hover ul li a,
#centeredmenu ul li.hover ul li a { /* This line is required for IE 6 and below */
   font-size:.8em;
   font-weight:normal; /* resets the bold set for the top level menu items */
   background:#eee;
   color:#444;
   line-height:1.4em; /* overwrite line-height value from top menu */
  /* border-bottom:1px solid #ddd; /* sub menu item horizontal lines */
}
#centeredmenu ul ul li a:hover,
#centeredmenu ul li.active ul li a:hover,
#centeredmenu ul li:hover ul li a:hover,
#centeredmenu ul li.hover ul li a:hover { /* This line is required for IE 6 and below */
   background:#36f; /* Sub menu items background colour */
   color:#fff;
}

/* Flip the last submenu so it stays within the page */
#centeredmenu ul ul.last {
   left:auto; /* reset left:0; value */
   right:0; /* Set right value instead */
}

/* Make the sub menus appear on hover */
#centeredmenu ul li:hover ul,
#centeredmenu ul li.hover ul { /* This line is required for IE 6 and below */
   display:block; /* Show the sub menus */
}
</style>
</head>

<body>
        <div id="templatemo_menu">
        
        	<div id="search_box">
              <form name="f1" action="Searchuser" method="post">
                    <input type="text" value="" name="username" size="10" id="input_field" title="usernmae" />
                    <input type="submit" name="login" value="Search" alt="login" id="submit_btn" title="Login" />
              </form>
       </div>  
  <div id="centeredmenu">
	<ul>
           
                
		
		<li><a href="#"><img src="images/user.png" alt="logo" height="20px" width="20px">About Me</a>
			<ul>
                            <li><a href="userbasicdetailview.jsp"><b>Personal details</b></a></li>
                            <li><a href="userinformationview.jsp"><b>Likes and Interests</b></a></li>
			    <li><a href="static2.jsp"><b>Professional details</b></a></li>
				
			</ul>
		</li>
	</ul>
</div>
 
        </div>
</body>
</html>
