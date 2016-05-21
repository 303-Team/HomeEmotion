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
$(function(){
//	alert($('#area').val());
	var id = $('#area').val();
	$.ajax({
		type : 'post',
		async : true,
		dataType : 'json',
		data : {'id' : id},
		url : "/HomeEmotions/getrecord.do",
		success : function(result) {
			//操作成功
//			alert(result[0][0].data.uploadTime.split(" ")[0]);
			writetable(result);
		},
		error : function(x) {
			  alert(2)
		}
	});
});

function writetable(result) {
	var lastV = "";
	for (var i = 0; i < result[1].length; i++) {
		lastV += "<li style='height: 30'><div class='number_div'>" +
				(i+1)+"</div><span><a href='player.do?id="+result[1][i].data.videoId+"&src="+result[1][i].data.videoName+"'>"+result[1][i].data.proName+"</a></span></li>";
	}
	$('#lastVideo').html(lastV);
	var hotv = "";
//	alert(message)
	for (var i = 0; i < result[0].length; i++) {
		hotv += "<div class='video_file_div'><a href='player.do?id="+result[0][i].data.videoId+"&src="+result[0][i].data.videoName+"'><img src='images/video/"+result[0][i].data.picName
		+"' /></a><div class='video_detail_div'>" +
				"<div class='video_title_div'>"+result[0][i].data.proName+"</div><div class='video_author_div'>作者:<span>"
				+result[0][i].name+"</span><span class='video_date_span'>"+
				result[0][i].data.uploadTime.split(" ")[0]+"</span></div></div></div>";
		$('#hotVideo').html(hotv);
	}
	
	var hotau = "";
	for (var i = 0; i < result[2].length; i++) {
		var t = 'old_li';
		if (i%2 == 1) {
			t = 'even_li';
		}
		hotau += "<li class='"+t+"'><a href='language.do?id="+result[2][i].data.auId+"'><span style='width: 40%;float: left;'>"
		+result[2][i].data.proName+"</span><span style='width: 25%;float: left;'>作者："+result[2][i].name+
		"</span><span style='float: left;'>时间："+result[2][i].data.uploadTime.split(" ")[0]+"</span></a></li>";
	}
	$('#audio_ul').html(hotau);
	
	var lastau = "";
	for (var i = 0; i < result[3].length; i++) {
		lastau += "<li style='height: 30'><div class='number_div'>" +
				(i+1)+"</div><span><a href='language.do?id="+result[3][i].data.auId+"'>"+result[3][i].data.proName+"</a></span></li>";
	}
	$('#lastau').html(lastau);
	
	var lastpic = "";
	for (var i = 0; i < result[5].length; i++) {
		lastpic += "<li style='height: 30'><div class='number_div'>" +
				(i+1)+"</div><span><a href='scenery.do?id="+result[5][i].data.picId+"&src="+result[5][i].data.picName+"'>"+result[5][i].data.proName+"</a></span></li>";
	}
	$('#lastpic').html(lastpic);
	
	var hotpic = "";
	for (var i = 0; i < result[4].length; i++) {
		hotpic += "<div class='scenery_div'><div class='theme_detail_div'><span>"+
		result[4][i].data.proName+"</span></div><a href='scenery.do?id="+result[4][i].data.picId+"&src="+result[4][i].data.picName+"' onmouseover='showDetail()' onmouseout='hiddenD" +
				"etail()'><img src='images/scenery/"+result[4][i].data.picName+"' /></a>" +
				"<div class='detail_div'><span class='picture_name_span'>"+result[4][i].name
				+"</span><span class='piture_date_span'>"+result[4][i].data.uploadTime.split(" ")[0]+"</span></div></div>";
	}
	$('#border_div').html(hotpic);
}