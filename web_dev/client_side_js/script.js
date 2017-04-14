console.log("This script is linked!");

function coolStyling() {
	var photo = document.getElementById("image");
	var title = document.getElementById("title");
	photo.style.border = "3px dashed blue";
	title.style.color = "purple";
	title.style.fontFamily = "Helvetica";
}

coolStyling();


// var photo = document.getElementsByTagName("img");
// photo = photo[0];
// photo.onclick = function() {
// 	photo.css("border", "3px dotted red");
// };