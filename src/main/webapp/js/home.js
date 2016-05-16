/**
 * 
 */
function showDetail(){
	for(var i=0;i< document.getElementsByClassName('theme_detail_div').length;i++){
		  var k = document.getElementsByClassName('theme_detail_div')[i];
		  var p = document.getElementsByClassName('detail_div')[i];
		  k.style.display = "block";
		  p.style.display = "block";
		}
}
function hiddenDetail(){
	for(var i=0;i< document.getElementsByClassName('theme_detail_div').length;i++){
		  var k = document.getElementsByClassName('theme_detail_div')[i];
		  var p = document.getElementsByClassName('detail_div')[i];
		  k.style.display = "none";
		  p.style.display = "none";
		}
}