$( document ).ready(function() {	
	var checkVisibility = function() {
		if ($("#quote1").hasClass("show-block")) {
	  	$("quote1").removeClass("show-block");
	  } else if ($("#quote2").hasClass("show-block")) {
	  	$("quote2").removeClass("show-block");
	  } else if ($("#quote3").hasClass("show-block")) {
	  	$("quote3").removeClass("show-block");
	  } else if ($("#quote4").hasClass("show-block")) {
	  	$("quote4").removeClass("show-block");
	  } else if ($("#quote5").hasClass("show-block")) {
	  	$("quote5").removeClass("show-block");
	  }
	}

	$( "#quote1-button" ).click(function() {
	  checkVisibility();
	  $("#quote1").removeClass("hide-block");
	  $("#quote1").addClass("show-block");
	});

	$( "#quote2-button" ).click(function() {
	  checkVisibility();
	  $("#quote2").removeClass("hide-block");
	  $("#quote2").addClass("show-block");
	});

	$( "#quote3-button" ).click(function() {
	  checkVisibility();
	  $("#quote3").removeClass("hide-block");
	  $("#quote3").addClass("show-block");
	});

	$( "#quote4-button" ).click(function() {
	  checkVisibility();
	  $("#quote4").removeClass("hide-block");
	  $("#quote4").addClass("show-block");
	});

	$( "#quote5-button" ).click(function() {
	  checkVisibility();
	  $("#quote5").removeClass("hide-block");
	  $("#quote5").addClass("show-block");
	});
});