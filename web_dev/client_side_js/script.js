console.log("This script is linked!");

function coolStyling() {
	var body = document.getElementsByTagName("body");
	body = body[0];
	var photo = document.getElementById("image");
	var title = document.getElementById("title");
	var content = document.getElementById("content");
	var list = document.getElementById("list");

	body.style.backgroundColor = "darkgreen";
	body.style.textAlign = "center";

	photo.style.border = "3px dashed yellow";

	title.style.color = "lightblue";
	title.style.fontFamily = "Helvetica, sans-serif";

	content.style.color = "white";
	content.style.fontFamily = "Helvetica, sans-serif";

	list.style.color = "orange";
	list.style.fontFamily = "Helvetica, sans-serif";
	list.style.listStyleType = "none";

	var addText = document.createElement("h2");
	var newText = document.createTextNode("It'S pArTy TiMe!");
	addText.appendChild(newText);
	body.appendChild(addText);
}
