<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    <meta name="viewport" content="initial-scale=1,maximum-scale=1"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/register.css">
	
	
	<script type="text/javascript"> 
		var appRoot = '${pageContext.request.contextPath}';
    </script>  
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/register.js"></script>
  </head>
  
  <body>
 <jsp:include page="header.jsp" flush="true" />
  <div id="register_div">
  	<li id="title_li">用户注册</li>
    <form  name="form1" method="post" action="${pageContext.request.contextPath}/registerAction.do">
    <table align="center">
            <tr><td>用户名：</td><td class="right"><input type="text" name="username" id="username" onblur="nameValidate()" placeholder="请输入您的用户名"/></td><td><div id="nameText" class="message_div"></div></td></tr>
            <tr><td>密码：</td><td class="right"><input type="password" name="password" onblur="checkPass1()" placeholder="请输入不少于8位的数字加字母的密码"/></td><td><div id="pass1Text" class="message_div"></div></td></tr>
            <tr><td>确认密码：</td><td class="right"><input type="password" name="repassword" onblur="checkPass2()" placeholder="请再次输入密码"/></td><td><div id="pass2Text" class="message_div"></div></td></tr>
            <tr><td>邮箱：</td><td class="right"><input type="text" name="email" onblur="checkEmail()" placeholder="请输入您的注册邮箱"/></td><td><div id="emailText" class="message_div"></div></td></tr>
            <tr style="display:none"><td>时间：</td><td class="right"><input type="text" name="last" /></td><td><div></div></td></tr>
            <tr><td>家乡地址：</td>
            	<td class="right">
            	<select name="address" >
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
            	<input type="hidden" value="0" id="hidden_input" name="hidden"/> 
				</td>
			</tr>
			<tr><td>验证码：</td><td class="right">
			<input name="state" type="text" id="checkCode" title="验证码区分大小写" maxlength="4" onblur="checkCode2()" />
			<img id="kaptcha" src="kaptcha.htm" /> 
			</td>
			<td><div id="codeText" class="message_div"></div></td>
			</tr>
			<tr><td></td><td class="checkbox"><input type="checkbox"name="detail"value="" onblur="detail2()" /><label>我已经阅读并同意<a href="###">《网络视频管理条例》</a></label></td><td><div id="checkText" class="message_div"></div></td></tr>
            <tr><td></td><td class="right"><input type="submit" id="submit"value="注册" onclick="validate()"/></td></tr>
    </table>
    </form>
  </div>
  <jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
