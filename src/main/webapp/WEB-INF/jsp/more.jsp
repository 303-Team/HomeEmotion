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
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/more.js"></script>
	  <style>
	#test select{
		width:100px;
		margin-left:20px;
	}
	.video_file_div{
		margin-left: 30px;
	}
	/*分页样式*/
#pagination-digg{margin-top: 10px;}
#pagination-digg li { border:0; margin:0; padding:0; font-size:20px; list-style:none; /* savers */ float:left; }
#pagination-digg a { border:solid 1px #9aafe5; margin-right:2px; }
#pagination-digg .previous-off,#pagination-digg .next-off  { border:solid 1px #DEDEDE; color:#888888; display:block; float:left; font-weight:bold; margin-right:2px; padding:3px 4px; }
#pagination-digg .next a,#pagination-digg .previous a { font-weight:bold; }	
#pagination-digg .active { background:#FFA500; color:#FFFFFF; font-weight:bold; display:block; float:left; padding:4px 6px; /* savers */ margin-right:2px; }
#pagination-digg a:link,#pagination-digg a:visited { color:#FFA500; display:block; float:left; padding:3px 6px; text-decoration:none; }
#pagination-digg a:hover { border:solid 1px #FFA500; }
  </style>
  </head>
  
  <body>
 	<jsp:include page="header.jsp" flush="true" />
 	<div class="clear"></div>
 	<div style="min-height: 600px;"  align="center">
 		<div style="text-align: center;margin-top: 20px;margin-bottom: 20px;" >
 			<input style="line-height: 30px;width: 20%;" id="workName">
 			<button style="height: 36px;" onclick="search()"> &nbsp;搜&nbsp;&nbsp;索&nbsp; </button>
 		</div>
 		<div id="fengl" style="width: 100%;" class="title_div">
				作品类型：<select id="workType">
					<option value="0">视频</option>
					<option value = "1">音频</option>
					<option value="2">图片</option>
					<!-- <option>全部</option> -->
				</select> 作品区域：
				<select id = "pType">
					<option></option>
					<option value="0">娱乐</option>
					<option value="1">风俗</option>
					<option value="2">旅行</option>
					<option value="3">随记</option>
				</select>
				 时间排序：<input type="radio" id="asc" name="px" value="0"><label
					for="asc">升序</label> <input type="radio" id="desc" name="px" checked="checked" value="1"><label
					for="desc">降序</label>
					地区：
					<select id="address" >
            		<option value ="bei_jing">北京</option>
            		<option value ="tian_jin">天津</option>
            		<option value ="he_bei">河北</option>
            		<option value ="shan_xi_2">山西</option>
            		<option value ="nei_meng_gu">内蒙古</option>
            		<option value ="guang_dong">广东</option>
            		<option value ="guang_xi">广西</option>
            		<option value ="he_nan">河南</option>
            		<option value ="hu_bei">湖北</option>
            		<option value ="hu_nan">湖南</option>
            		<option value ="hai_nan">海南</option>
            		<option value ="shang_hai">上海</option>
            		<option value ="jiang_su">江苏</option>
            		<option value ="zhe_jiang">浙江</option>
            		<option value ="an_hui">安徽</option>
            		<option value ="fu_jian">福建</option>
            		<option value ="jiang_xi">江西</option>
            		<option value ="shan_dong">山东</option>
            		<option value ="chong_qing">重庆</option>
            		<option value ="si_chuan">四川</option>
            		<option value ="gui_zhou">贵州</option>
            		<option value ="yun_nan">云南</option>
            		<option value ="xi_zang">西藏</option>
            		<option value ="liao_ning">辽宁</option>
            		<option value ="ji_lin">吉林</option>
            		<option value ="hei_long_jiang">黑龙江</option>
            		<option value ="shan_xi_1">陕西</option>
            		<option value ="gan_su">甘肃</option>
            		<option value ="qing_hai">青海</option>
            		<option value ="ning_xia">宁夏</option>
            		<option value ="xin_jiang">新疆</option>
            		<option value ="tai_wan">台湾</option> 
            	</select>
 		</div>
 		<div style="width: 90%;text-align: center;">
 		  <div  id="connent">
 			<div class="video_file_div">
 				<a href="player.do"><img src="images/video/1.png" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">姊妹团子</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="player.do"><img src="images/video/1.png" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">龙脂猪血</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="player.do"><img src="images/video/1.png" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">糯米粽子</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="player.do"><img src="images/video/1.png" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">火宫殿臭豆腐</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="player.do"><img src="images/video/1.png" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">椒盐馓子</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="player.do"><img src="images/video/1.png" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">长沙臭豆腐</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="player.do"><img src="images/video/1.png" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">芙蓉三鲜火锅</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="scenery.do"><img src="images/scenery/6.jpg" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">口味虾</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="scenery.do"><img src="images/scenery/6.jpg" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">结麻花</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="scenery.do"><img src="images/scenery/6.jpg" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">湘宾春卷</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="scenery.do"><img src="images/scenery/6.jpg" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">乾煎鸡油八宝饭</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			<div class="video_file_div">
 				<a href="language.do"><img src="images/scenery/6.jpg" /></a>
 				<div class="video_detail_div">
 					<div class="video_title_div">麻仁奶糖</div>
 					<div class="video_author_div">作者:<span>张三</span><span class="video_date_span">2016-02-08</span></div>
 				</div>
 			</div>
 			</div>
 			<div class="clear"></div>
				<ul id="pagination-digg"
					style="display: inline; margin: 0 auto; text-align: center;width: 100%;">
					<li class="previous-off">«首页</li>
					<li class="active">1</li>
					<li><a href="player.jsp?page=2">2</a></li>
					<li><a href="player.jsp?page=3">3</a></li>
					<li><a href="player.jsp?page=4">4</a></li>
					<li><a href="player.jsp?page=5">5</a></li>
					<li><a href="player.jsp?page=6">6</a></li>
					<li><a href="player.jsp?page=7">7</a></li>
					<li class="next"><a href="?page=8">下一页 »</a></li>
				</ul>
		</div>
 	</div>
 	<div class="clear"></div>
 	<jsp:include page="footer.jsp" flush="true" />
 	<input type="hidden" value=${pro} id="pro">
 	<input type="hidden" value=${type} id="type">
  </body>
</html>
