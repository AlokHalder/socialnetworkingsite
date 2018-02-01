
	
	$(document).ready(function() {

	/* =Reflection Nav
	-------------------------------------------------------------------------- */	
		
		// Append span to each LI to add reflection
		
		$("#nav-reflection li").append("<span></span>");	
		
		// Animate buttons, move reflection and fade
		
		$("#nav-reflection a").hover(function() {
		    $(this).stop().animate({ marginTop: "-10px" }, 200);
		    $(this).parent().find("span").stop().animate({ marginTop: "5px", opacity: 0.25 }, 200);
		},function(){
		    $(this).stop().animate({ marginTop: "0px" }, 300);
		    $(this).parent().find("span").stop().animate({ marginTop: "1px", opacity: 1 }, 300);
		});
				
	/* =Shadow Nav
	-------------------------------------------------------------------------- */
	
		// Append shadow image to each LI
		
		$("#nav-shadow li").append('<img class="shadow" src="images/icons-shadow.png" width="26" height="11" alt="" />');
	
		// Animate buttons, shrink and fade shadow
		
		$("#nav-shadow li").hover(function() {
			var e = this;
		    $(e).find("a").stop().animate({ marginTop: "-5px" }, 250, function() {
		    	$(e).find("a").animate({ marginTop: "-5px" }, 250);
		    });
		    $(e).find("img.shadow").stop().animate({ width: "80%", height: "8px", marginLeft: "4px", opacity: 0.25 }, 250);
		},function(){
			var e = this;
		    $(e).find("a").stop().animate({ marginTop: "4px" }, 250, function() {
		    	$(e).find("a").animate({ marginTop: "0px" }, 250);
		    });
		    $(e).find("img.shadow").stop().animate({ width: "100%", height: "11px", marginLeft: "0", opacity: 1 }, 250);
		});
						
	// End jQuery
	
	});
	
	
	
	



	
	$(document).ready(function() {

	/* =Reflection Nav
	-------------------------------------------------------------------------- */	
		
		// Append span to each LI to add reflection
		
		$("#nav-reflection li").append("<span></span>");	
		
		// Animate buttons, move reflection and fade
		
		$("#nav-reflection a").hover(function() {
		    $(this).stop().animate({ marginTop: "-10px" }, 200);
		    $(this).parent().find("span").stop().animate({ marginTop: "18px", opacity: 0.25 }, 200);
		},function(){
		    $(this).stop().animate({ marginTop: "0px" }, 300);
		    $(this).parent().find("span").stop().animate({ marginTop: "1px", opacity: 1 }, 300);
		});
				
	/* =Shadow Nav
	-------------------------------------------------------------------------- */
	
		// Append shadow image to each LI
		
		$("#nav-domain li").append('<img class="shadow" src="images/icons-shadow2.jpg" width="137" height="18" alt="" />');
	
		// Animate buttons, shrink and fade shadow
		
		$("#nav-domain li").hover(function() {
			var e = this;
		    $(e).find("a").stop().animate({ marginTop: "-14px" }, 250, function() {
		    	$(e).find("a").animate({ marginTop: "-10px" }, 250);
		    });
		    $(e).find("img.shadow").stop().animate({ width: "80%", height: "18px", marginLeft: "8px", opacity: 0.25 }, 250);
		},function(){
			var e = this;
		    $(e).find("a").stop().animate({ marginTop: "10px" }, 250, function() {
		    	$(e).find("a").animate({ marginTop: "0px" }, 250);
		    });
		    $(e).find("img.shadow").stop().animate({ width: "80%", height: "18px", marginLeft: "18", opacity: 1 }, 250);
		});
						
	// End jQuery
	
	});