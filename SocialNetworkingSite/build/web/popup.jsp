%-- 
    Document   : popup
    Created on : Apr 16, 2013, 12:45:10 AM
    Author     : Devlina Datta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>::Uniwide::</title>
        <link rel="shortcut icon" type="image/ico" href="images/fab.ico" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/style2.css"> 
            <link rel="stylesheet" href="css/demo.css" />
            <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script> -->
            <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Merienda:400,700">
                <script type="text/javascript" src="js/jquery.min_1.js"></script>
                <script type="text/javascript" language="javascript" charset="utf-8" src="js/nav.js"></script>
                <script src="js/jquery.easing.1.3.js"></script>
                <script src="js/slides.min.jquery.js"></script>

                <link href="css/Accordion_style.css" rel="stylesheet" type="text/css" />
                <script type="text/javascript" src="js/ddaccordion.js"></script>
                <link href="css/bnr_slid.css" rel="stylesheet" type="text/css" />
                <link rel="stylesheet" type="text/css" media="screen" href="css/dropdown.css" />
                <script type="text/javascript" src="js/execute.js"></script>

                <script type="text/javascript">
                    ddaccordion.init({
                        headerclass: "submenuheader", //Shared CSS class name of headers group
                        contentclass: "submenu", //Shared CSS class name of contents group
                        revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
                        mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
                        collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
                        defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
                        onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
                        animatedefault: false, //Should contents open by default be animated into view?
                        persiststate: true, //persist state of opened contents within browser session?
                        toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
                        togglehtml: ["suffix", "<img src='http://it.uniwides.com//public/images/puls.png' class='statusicon' />", "<img src='http://it.uniwides.com//public/images/minus.png' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
                        animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
                        oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
                            //do nothing
                        },
                        onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
                            //do nothing
                        }
                    })
                </script>



                <script>
                    $(function(){
                        $('#slides').slides({
                            preload: true,
                            preloadImage: 'img/loading.gif',
                            play: 5000,
                            pause: 2500,
                            hoverPause: true
                        });
                    });
                </script>







                <link rel="stylesheet" type="text/css" href="css/popup.css" />

                <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
                <script type="text/javascript">
                    $(function() {
                        $('a[rel*=leanModal]').leanModal({ top : 200, closeButton: ".modal_close" });		
                    });
                </script>
                <script type="text/javascript">

                    var _gaq = _gaq || [];
                    _gaq.push(['_setAccount', 'UA-3318823-14']);
                    _gaq.push(['_trackPageview']);
		
                    (function() {
                        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                    })();
		  
                    function validation()
                    {
                        var c=0;
			  
                        var nam=document.getElementById("nam").value;
                        var email=document.getElementById("recipient").value;
                        var contact=document.getElementById("contact").value;
                        if(nam=="")
                        {
                            c++;
                            alert("Please Enter Your Name");
                            return false;
                        }
                        if(email=="")
                        {
                            c++;
                            alert("Please Enter Email");
                            return false;
                        }else
                        {
                            var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
                            if(email.match(mailformat))  
                            {  
                                // document.form1.text1.focus();  
						 
                            }  
                            else  
                            {  
                                c++;
                                alert("You have entered an invalid email address!");  
						 
                                return false;  
                            }  
				  
                        }
                        if(contact=="")
                        {
                            c++;
                            alert("Please Enter Your Contact Number");
                            return false;
                        }
                        if(c==0){
                            return true;
                        }
			  
                    }

                </script>	
                </head>
                <body>



                    <!-- Banner  End -->

                    <!-- Main Body Start -->
                    <div class="body_containarea">


                        <div class="center_panel">

                            <p id="examples" class="section box">

                               <a id="go" rel="leanModal" name="signup" href="#signup"><font color="red">Download Brochure</font></a>
                            </p>

                            <div id="signup">
                                <div id="signup-ct">
                                    <div id="signup-header">
                                        <h2>Mailing Brochure</h2>

                                        <a class="modal_close" href="#"></a>
                                    </div>

                                    <form action="#s" method="post" onsubmit="return validation()">

                                        <div class="txt-fld">
                                            <label for=""><font face="Comic Sans MS" size="3">Name:</font></label>
                                            <input id="nam" class="good_input" name="nam" type="text" />

                                        </div>
                                        <div class="txt-fld">
                                            <label for=""><font face="Comic Sans MS" size="3">Email:</font></label>
                                            <input id="recipient" name="recipient" type="text" />
                                        </div>
                                        <div class="txt-fld">
                                            <label for=""><font face="Comic Sans MS" size="3">Contact:</font></label>
                                            <input id="contact" name="contact" type="text" />

                                        </div>
                                        <div class="btn-fld">
                                            <button type="submit">Download &raquo;</button>
                                        </div>
                                    </form>
                                </div>


                            </div>
                            <!-- Main Body End -->

                            <!-- Upper Footer part Start -->
                            <div class="body_containarea">

                                <?php include   "Content/hrpayroll_content_footer.php"  ?>
                            </div>
                            <!-- Upper Footer End -->


                            <?php include   "includeHTML/footer.php" ?>


                        </div>


                </body>
                </html>




