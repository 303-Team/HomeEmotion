//调用插件
	$(function(){
		$('#workType').val($('#type').val());
		$('#address').val($('#pro').val());
		search();
	});
	function search() {
		var name = $('#workName').val();
		var workType = $('#workType').val();
		var pType = $('#pType').val();
		var px = $("input[name=px]:checked").val();
		var address = $('#address').val();
		var page = curPage;
		$.ajax({
			type : 'post',
			async : true,
			dataType : 'json',
			data : {'name':name,'workType':workType,'pType':pType,
				'px':px,'address':address,'page':page},
			url : "/HomeEmotions/searchWork.do",
			success : function(result) {
				//操作成功
				writeConnent(result,workType);
			},
			error : function(x) {
				  alert(2)
			}
		});
	}
function writeConnent(result,workType) {
	var htm = "";
	if (workType == "0") {
		for (var i = 0; i < result.data.length; i++) {
			htm += "<div class='video_file_div'><a href='player.do?id="+result.data[i].id+"&src="+result.data[i].proName+
					"'><img src='images/video/"+result.data[i].picName+"' /></a><div class='video_detail_div'>" +
							"<div class='video_title_div'>"+result.data[i].videoName+"</div><div class='video_author_div'>作者:<span>"
							+result.name[i]+"</span><span class='video_date_span'>" +
				result.data[i].uploadTime.split(" ")[0]+"</span></div></div></div>";
		}
	}
	if (workType == "1") {
		for (var i = 0; i < result.data.length; i++) {
			htm += "<div class='video_file_div'><a href='language.do?id="+result.data[i].auId+
					"'><img src='images/audio/voice.jpg' /></a><div class='video_detail_div'>" +
							"<div class='video_title_div'>"+result.data[i].auName+"</div><div class='video_author_div'>作者:<span>"
							+result.name[i]+"</span><span class='video_date_span'>" +
				result.data[i].uploadTime.split(" ")[0]+"</span></div></div></div>";
		}
	}
	if (workType == "2") {
		for (var i = 0; i < result.data.length; i++) {
			htm += "<div class='video_file_div'><a href='scenery.do?id="+result.data[i].picId+"&src="+result.data[i].proName+
			"'><img src='images/scenery/"+result.data[i].proName+"' /></a><div class='video_detail_div'>" +
							"<div class='video_title_div'>"+result.data[i].picName+"</div><div class='video_author_div'>作者:<span>"
							+result.name[i]+"</span><span class='video_date_span'>" +
				result.data[i].uploadTime.split(" ")[0]+"</span></div></div></div>";
		}
	}
	$('#connent').html(htm);
	var all = parseInt((result.total-1)/12)+1;
//	all = 11;
	if (curPage == 1) {
		var fengye = "<li class='previous-off'>«上一页</li>";
	}else {
		var fengye = "<li class='previous'><a  onclick = topage('"+(curPage-1)+"') href='javascript:void(0);'>«上一页</a></li>";
	}
	for (var i = 0; i < all; i++) {
		if ((i+1) == curPage) {
			fengye += "<li  class='active'>"+(i+1)+"</li>";
		}else {
			fengye += "<li><a onclick = topage('"+(i+1)+"') href='javascript:void(0);'>"+(i+1)+"</a></li>";
		}
	}
	if (curPage == all) {
		fengye += "<li class='next-off'>下一页 »</li>";
	}else {
		fengye += "<li class='next'><a href='javascript:void(0);'  onclick = topage('"+(curPage+1)+"')>下一页 »</a></li>";
	}
	$('#pagination-digg').html(fengye);
}
var curPage = 1;
function topage(a) {
	curPage = a;
	search();
}
function test() {
	alert($('#pro').val())
}