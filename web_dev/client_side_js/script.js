console.log("This script is linked!");

function coolStyling() {
	var body = document.getElementsByTagName("body");
	body = body[0];
	var photo = document.getElementById("image");
	var title = document.getElementById("title");
	var content = document.getElementById("content");
	var list = document.getElementById("list");

	body.style.backgroundColor = "red";
	body.style.textAlign = "center";

	photo.style.border = "3px dashed blue";

	title.style.color = "purple";
	title.style.fontFamily = "Helvetica, sans-serif";

	content.style.color = "darkgreen";
	content.style.fontFamily = "Helvetica, sans-serif";

	list.style.color = "orange";
	list.style.fontFamily = "Helvetica, sans-serif";
}

coolStyling();


// var photo = document.getElementsByTagName("img");
// photo = photo[0];
// photo.onclick = function() {
// 	photo.css("border", "3px dotted red");
// };