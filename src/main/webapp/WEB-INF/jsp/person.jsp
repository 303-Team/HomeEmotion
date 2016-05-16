<%@ page language="java" import="java.util.*,cn.springmvc.utils.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/person.css">
	<link rel="stylesheet" type="text/css" href="css/jquery.Jcrop.css">
	
	<script type="text/javascript"> 
		var appRoot = '${pageContext.request.contextPath}';
    </script>  
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/person.js"></script>
	<script type="text/javascript" src="js/jquery.Jcrop.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
    <jsp:include page="header.jsp" flush="true" />
    	<div id="person_information_div"><p>个人信息</p>
    	<form method="post" action="${pageContext.request.contextPath}/uploadHeadImage.do" enctype="multipart/form-data">
 			<div class="detail_div">用户名:<span><input type="text" name="username" value="${User.username}"></span></div>
 			<div class="detail_div">邮&nbsp&nbsp&nbsp箱:<span><input type="text" name="email" value="${User.email}"></span></div>
 			<div class="detail_div" id="password_div">
 			<div>
 			新密 码:<span><input type="password" name="password" onblur="checkPassword1()" placeholder="请输入您的新密码" id="password1"/></span>
 			<div id="pass1Text" class="message_div"></div>
 			</div>
 			<div>
 			确认密码:<span><input type="password" name="repassword" onblur="checkPassword2()" placeholder="请确认您的新密码" id="password2" /></span>
 			<div id="pass2Text" class="message_div"></div>
 			</div>
 			</div>
 			<div class="detail_div" id="head_div">
 				头像:<div class="modal-body text-center">
			        <div class="zxx_main_con">
			            <div class="zxx_test_list">
			                <input class="photo-file" type="file" name="imgFile" id="fcupload" onchange="readURL(this);"/>
			                <img alt="" src="" id="cutimg" />
			                <input type="hidden" id="x" name="x"/>
			                <input type="hidden" id="y" name="y"/>
			                <input type="hidden" id="w" name="w"/>
			                <input type="hidden" id="h" name="h"/>
			            </div>
			        </div>
			    </div>
 			</div>
 			<div class="detail_div">家乡地址:<span>
 				<select id="address" name="address">
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
 			</span></div>
 			<div class="detail_div" id="submit_div"><input type="submit" value="提交" id="submit" onClick="checkPassword('${User.password}')"/></div>
 			</form>
    	</div>
    <jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
