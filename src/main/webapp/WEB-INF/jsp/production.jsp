<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的作品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/production.css">
	
	<script type="text/javascript" src="js/dialog.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <jsp:include page="header.jsp" flush="true" />
    	<!-- 弹出上传界面 -->
    	<div id="upload_div">
    	<div id="close_div"><span onclick="close()">×</span></div>
    	<form action="${pageContext.request.contextPath}/fileUpload.do" method="post" enctype="multipart/form-data">
	        <table align="center" cellspacing="5" cellpadding="5" id="upload_table">
	        <tr>
	        	<td>上传：</td><td><input type="file" name="fileUpload" /></td><td class="massage_td"></td>
	        </tr>
	        <tr>
	        	<td>主题：</td><td><input type="text" name="pName" /></td><td class="massage_td"></td>
	        </tr>
	        <tr>
	        	<td>类型：</td><td><input type="radio" value="0"/>娱乐<input type="radio" value="1"/>风俗<input type="radio" value="2"/>旅行<input type="radio" value="3"/>随记</td><td class="massage_td"></td>
	        </tr>
	        <tr>
	        	<td></td><td><input type="submit" value="上传" id="upload_input"/></td>
	        </tr>
	        </table>
    	</form>
    	</div>
    	<!--  <div id="menul"><div id="uploading"><a href="uploading.do">上传作品</a></div>-->
    	<div id="menul"><div id="uploading"><button onclick="openForms()">上传作品</button></div>
    	<div id="deleteAll"><button>批量删除</button></div></div>
    	<div id="search_div"><input type="text" /><button>搜索</button></div>
    	<div id="production_list_div">
    		<table align="center" cellspacing="15" cellpadding="10" id="data_table">
    			<th><input name="all" type="checkbox" value="" /></th><th>序号</th><th>名称</th><th>类型</th><th>上传时间</th><th>操作</th>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td><a href="#" class="opration">查看</a><a href="#" class="opration">修改</a><a href="#" class="opration">删除</a></td>
    			</tr>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td>删除</td>
    			</tr>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td>删除</td>
    			</tr>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td>删除</td>
    			</tr>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td>删除</td>
    			</tr>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td>删除</td>
    			</tr>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td>删除</td>
    			</tr>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td>删除</td>
    			</tr>
    			<tr>
    				<td><input name="01" type="checkbox" value="" /></td><td>01</td><td>天眼传奇</td><td>娱乐</td><td>2016-04-23 16:23:09</td><td>删除</td>
    			</tr>
    		</table>
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
    	</div>
    <jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
