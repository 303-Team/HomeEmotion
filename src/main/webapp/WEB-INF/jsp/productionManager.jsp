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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <jsp:include page="header.jsp" flush="true" />
    	<p>网站视频</p><hr/>
    	<div id="myVideo_div">
    		<a href="#"><img src="##" class="uploading"/></a>
    		<div class="left_div">
	    		<ul>
	    		<li class="production_div"><span>天眼传奇</span><a href="#">删除</a><a href="#">查看</a></li>
	    		</ul>
    		</div>
    		<div class="right_div">
	    		<ul>
	    		<li class="production_div"><span>天眼传奇</span><a href="#">删除</a><a href="#">查看</a></li>
	    		</ul>
    		</div>
    	</div>
    	<p>网站音频</p><hr/>
    	<div id="myAudio_div"><a href="#"><img src="##" class="uploading"/></a>
    		<div class="left_div">
	    		<ul>
	    		<li class="production_div"><span>天眼传奇</span><a href="#">删除</a><a href="#">查看</a></li>
	    		</ul>
    		</div>
    		<div class="right_div">
	    		<ul>
	    		<li class="production_div"><span>天眼传奇</span><a href="#">删除</a><a href="#">查看</a></li>
	    		</ul>
    		</div>
    	</div>
    	<p>网站图片</p><hr/>
    	<div id="myPicture_div"><a href="#"><img src="##" class="uploading"/></a>
    		<div class="left_div">
	    		<ul>
	    		<li class="production_div"><span>天眼传奇</span><a href="#">删除</a><a href="#">查看</a></li>
	    		</ul>
    		</div>
    		<div class="right_div">
	    		<ul>
	    		<li class="production_div"><span>天眼传奇</span><a href="#">删除</a><a href="#">查看</a></li>
	    		</ul>
    		</div>
    	</div>
    <jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
