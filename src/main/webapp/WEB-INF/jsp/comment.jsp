<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>comment</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/comment.js"></script>

  </head>
  
  <body>
 	 <input type="hidden" id="pid" value=${param.pid}>
 	 <input type="hidden" id="type" value=${param.type}>
 	 <input type="hidden" id="refelt" value="">
    <div id="comment_div">
    	<div id="content">
    	<table class="comment_table">
    		<tr>
    			<td  rowspan="2" class="picture_div"><div class="picture_div"><img src="images/scenery/1.jpg" /></div></td>
    			<td><div class="content_div"><span><a href="##">小谢:</a>很好很好很好很好很好很好很好!</span></div></td></tr>
    		<tr><td><div class="detail_div">时间:<span class="time_span">2016/02/08 00:00:00</span><span class="response_span"><a href="##">回复</a></span></div></td></tr>
    		<tr><td colspan="2">
    		</td></tr>
    	</table>
    	</div>
		<ul id="pagination-digg">
	      <li class="previous-off">&laquo;首页</li>
	      <li class="active">1</li>
	      <li><a href="player.jsp?page=2">2</a></li>
	      <li><a href="player.jsp?page=3">3</a></li>
	      <li><a href="player.jsp?page=4">4</a></li>
	      <li><a href="player.jsp?page=5">5</a></li>
	      <li><a href="player.jsp?page=6">6</a></li>
	      <li><a href="player.jsp?page=7">7</a></li>
	      <li class="next"><a href="?page=8">下一页 &raquo;</a></li>
  		</ul>
		<div id="submit_div">
			<form>
				<textarea autoHeight="true" id="myComment"></textarea>
				<div id="commit_div"><input type="submit" value="评论" /></div>
			</form>
		</div>
	</div>
	<script>
	//输入文本框自动增加尺寸
   	$.fn.autoHeight = function(){

	function autoHeight(elem){
		elem.style.height = 'auto';
		elem.scrollTop = 0; //防抖动
		elem.style.height = elem.scrollHeight + 'px';
	}
	
	this.each(function(){
		autoHeight(this);
		$(this).on('keyup', function(){
			autoHeight(this);
		});
	});
	 
	}
    	
	$('textarea[autoHeight]').autoHeight();
	</script>
  </body>
</html>
