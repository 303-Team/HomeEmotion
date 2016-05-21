$(function() {
	getComment();
});
function getComment() {
	var pid = $('#pid').val();
	var type = $('#type').val();
	$.ajax({
		type : 'post',
		async : true,
		dataType : 'json',
		data : {'pid':pid,'type':type,'page':curPage},
		url : "/HomeEmotions/getComment.do",
		success : function(result) {
			//操作成功
			writeComment(result.dataList);
			writepage(result.total);
		},
		error : function(x) {
		}
	});
}
function writeComment(result) {
	var htm = "";
	htm = analize(result,htm);
	$('#content').html(htm);
}
function analize(result,htm) {
	for (var i = 0; i < result.length; i++) {
		htm += "<table class='comment_table'><tr><td  rowspan='2' class='picture_div'><div class='picture_div'>" +
				"<img src='images/scenery/1.jpg' /></div></td><td><div class='content_div'><span><a href='##'>"+result[i].user.username+":" +
				"</a>"+result[i].data.content+"</span></div></td></tr><tr><td><div class='detail_div'>时间:" +
						"<span class='time_span'>"+result[i].data.date+"</span><span class='response_span'><a href='javascript:void(0);' " +
								"onclick = refect('"+result[i].user.username+"','"+result[i].data.id+"');>回复" +
						"</a></span></div></td></tr>"
		htm = child(result[i].child,htm);
		htm += "</table>"
	}
	return htm;
}
function child(result,htm) {
	for (var i = 0; i < result.length; i++) {
		htm += "<tr><td colspan='2'>";
		htm += "<table class='comment_table'><tr><td  rowspan='2' class='picture_div'><div class='picture_div'>" +
				"<img src='images/scenery/1.jpg' /></div></td><td><div class='content_div'><span><a href='##'>"+result[i].user.username+":" +
				"</a>"+result[i].data.content+"</span></div></td></tr><tr><td><div class='detail_div'>时间:" +
						"<span class='time_span'>"+result[i].data.date+"</span><span class='response_span'><a href='javascript:void(0);'" +
								"onclick = refect('"+result[i].user.username+"','"+result[i].data.id+"');>回复" +
						"</a></span></div></td></tr>"
		htm = child(result[i].child,htm);
		htm += "</table></td></tr>"
	}
	return htm;
}
function writepage(total) {
	var all = parseInt((total-1)/5)+1;
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
	getComment();
}
function refect(name , id) {
	$('#refelt').val(id);
	$('#myComment').val('@'+name+":     ");
	document.getElementsByTagName('BODY')[0].scrollTop=document.getElementsByTagName('BODY')[0].scrollHeight;
}
function giveComment() {
	var pid = $('#pid').val();
	var type = $('#type').val();
	var touser = $('#refelt').val();
	var content = $('#myComment').val();
	$.ajax({
		type : 'post',
		async : true,
		dataType : 'text',
		data : {'pid':pid,'type':type,'touser':touser,'content':content},
		url : "/HomeEmotions/giveComment.do",
		success : function(result) {
			//操作成功
			alert(result);
		},
		error : function(x) {
			alert("评论失败");
		}
	});
	setTimeout(function () {
		window.location.href=window.location.href;
	}, 1000);
}