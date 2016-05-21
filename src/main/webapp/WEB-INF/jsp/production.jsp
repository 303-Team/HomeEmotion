<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    	<!--  <div id="menul"><div id="uploading"><a href="uploading.do">上传作品</a></div>-->
    	<div id="menul"><div id="uploading"><button onclick="openForms()">上传作品</button></div>
    	<div id="deleteAll"><button>批量删除</button></div></div>
    	<div id="search_div"><input type="text" /><button href="searchVideo.do">搜索</button></div>
    	<div id="production_list_div">
    		<table align="center" cellspacing="15" cellpadding="10" id="data_table">
    			<th><input name="all" type="checkbox" value="" /></th><th>序号</th><th>名称</th><th>类型</th><th>上传时间</th><th>操作</th>
    			<c:forEach items="${videoList }" var="item"  varStatus="i">
    			<tr>
    				<td><input name="check" type="checkbox" value="" /></td><td>${i.index+1}</td><td>${item.proName}</td><td>${item.proType}</td><td>${item.uploadTime}</td>
    				<td>
    					<a href="player.do?id=${item.videoId}&src=${item.videoName}" class="opration">查看</a>
    					<a href="updateVideo.do?id=${item.videoId}" class="opration">修改</a>
    					<a href="deleteVideo.do?id=${item.videoId}" class="opration">删除</a></td>
    			</tr>
    			</c:forEach> 
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
