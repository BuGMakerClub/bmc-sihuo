// JavaScript Document
function show_download(){
	document.getElementById("downloadBox").style.display = "block";
}
function hide_download(){
	document.getElementById("downloadBox").style.display = "none";
}
function adjust_count(flag) {
	var now_ = document.getElementById("buy_count").value;
	if(isNaN(now_)){
		now_ = 0;
	}
	if (flag == "add") {
		document.getElementById("buy_count").value  = parseInt(now_) + 1;
	} else {
		if(now_ > 1){
			document.getElementById("buy_count").value = now_ - 1;
		}
	}
}