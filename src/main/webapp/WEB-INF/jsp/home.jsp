<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>家乡主题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<script type="text/javascript" src="js/home.js"></script>
  </head>
  
  <body>
 	<jsp:include page="header.jsp" flush="true" />
 	<div class="clear"></div>
 	<div id="video_div">
 		<div class="title_div"><span class="title_span">视频</span><span class="more_video_span"><a href="##">更多>></a></span></div>
 		<div class="video_file_div">
 			<a href="player.do"><img src="images/video/1.png" /></a>
 			<div class="video_detail_div">
 				<div class="video_title_div">天眼传奇</div>
 				<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 			</div>
 		</div>
 		<div class="video_file_div">
 			<a href="player.do"><img src="images/video/1.png" /></a>
 			<div class="video_detail_div">
 				<div class="video_title_div">天眼传奇</div>
 				<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 			</div>
 		</div>
 		<div class="video_file_div">
 			<a href="player.do"><img src="images/video/1.png" /></a>
 			<div class="video_detail_div">
 				<div class="video_title_div">天眼传奇</div>
 				<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 			</div>
 		</div>
 		<div class="video_file_div">
 			<a href="player.do"><img src="images/video/1.png" /></a>
 			<div class="video_detail_div">
 				<div class="video_title_div">天眼传奇</div>
 				<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 			</div>
 		</div>
 		<div class="video_file_div">
 			<a href="player.do"><img src="images/video/1.png" /></a>
 			<div class="video_detail_div">
 				<div class="video_title_div">天眼传奇</div>
 				<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 			</div>
 		</div>
 		<div class="video_file_div">
 			<a href="player.do"><img src="images/video/1.png" /></a>
 			<div class="video_detail_div">
 				<div class="video_title_div">天眼传奇</div>
 				<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 			</div>
 		</div>
 	</div>
 	<div id="video_ranking_div">
 		<div class="rank_title_div"><span class="title_span">游览排行</span></div>
 		<ul class="rank_ul">
 			<li><div class="number_div">1</div><span><a href="player.do">天眼传奇</a></span></li>
 			<li><div class="number_div">2</div><span><a href="player.do">神雕侠女</a></span></li>
 		</ul>
 	</div>
 	<div id="music_div">
 		<div class="title_div">
 			<span class="title_span">家乡话</span>
 		</div>
		<div class="one_div">
			<p>闲聊</p>
			<ul id="audio_ul">
	 			<li class="old_li"><a href="language.do">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
 			</ul>
		</div>
		<div class="one_div"><p>故事</p>
			<ul id="audio_ul">
	 			<li class="old_li"><a href="language.do">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
 			</ul>
		</div>
		<div class="one_div"><p>搞笑</p>
			<ul id="audio_ul">
	 			<li class="old_li"><a href="language.do">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
 			</ul>
		</div>
		<div class="one_div"><p>歌曲</p>
			<ul id="audio_ul">
	 			<li class="old_li"><a href="language.do">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="old_li"><a href="##">Cro Magnon Man</a></li>
	 			<li class="even_li"><a href="##">Cro Magnon Man</a></li>
 			</ul>
		</div>
 	</div>
 	<div id="music_ranking_div">
 		<div class="rank_title_div">
 			<span class="title_span">热门推荐</span>
 			 	<ul class="rank_ul">
 				<li><div class="number_div">1</div><span><a href="language.do">Cro Magnon Man</a></span></li>
 				<li><div class="number_div">2</div><span><a href="test.html">The Separation</a></span></li>
 			</ul>
 		</div>
 	</div>
 	<div id="picture_div">
 		<div class="title_div">
 			<span class="title_span">家乡风光</span>
 			<span class="more_video_span"><a href="##">更多>></a></span>
 			<div id="border_div">
 			<div class="scenery_div">
 				<div class="theme_detail_div"><span>橘子洲风光</span></div>
 				<a href="scenery.do" onmouseover="showDetail()" onmouseout="hiddenDetail()"><img src="images/scenery/1.jpg" /></a>
 				<div class="detail_div"><span class="picture_name_span">小谢</span><span class="piture_date_span">2016/02/09</span></div>
 			</div>
 			<div class="scenery_div">
 				<a href="scenery.do"><img src="images/scenery/2.jpg" /></a>
 			</div>
 			<div class="scenery_div">
 				<img src="images/scenery/3.jpg" />
 			</div>
 			<div class="scenery_div">
 				<img src="images/scenery/4.jpg" />
 			</div>
 			<div class="scenery_div">
 				<img src="images/scenery/5.jpg" />
 			</div>
 			<div class="scenery_div">
 				<div class="theme_detail_div"><span>岳麓山风光</span></div>
 				<a href="scenery.do"><img src="images/scenery/6.jpg" /></a>
 				<div class="detail_div"><span class="picture_name_span">小谢</span><span class="piture_date_span">2016/02/09</span></div>
 			</div>
 			</div>
 			<!--  <img src="images/scenery/1.jpg" />
 			-->
 		</div>
 	</div>
 	<div id="picture_ranking_div">
 		<div class="rank_title_div">
 			<span class="title_span">游览排行</span>
 			<ul class="rank_ul">
 				<li><div class="number_div">1</div><span><a href="scenery.do">橘子洲风光</a></span></li>
 				<li><div class="number_div">2</div><span><a href="scenery.do">岳麓山风光</a></span></li>
 			</ul>
 		</div>
 	</div>
 	<div class="clear"></div>
 	<jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
