<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    <meta name="viewport" content="initial-scale=1,maximum-scale=1"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	
	<script type="text/javascript"> 
		var appRoot = '${pageContext.request.contextPath}';
    </script> 
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/register.js"></script>
  </head>
  
  <body>
 <jsp:include page="header.jsp" flush="true" />
  <div id="login_div">
  	<li id="title_li">用户登陆</li>
  	<form name="form1" method="post" action="${pageContext.request.contextPath}/loginAction.do">
    <table align="center">
            <tr><td>用户名：</td><td class="right"><input type="text" name="username" id="username"onblur="checkName()" placeholder="请输入您的用户名"/></td><td><div id="nameText" class="message_div"></div></td></tr>
            <tr><td>密码：</td><td class="right"><input type="password" onblur="checkPass1()" name="password" id="password" placeholder="请输8~16位的数字加字母的密码"/></td><td><div id="pass1Text" class="message_div"></div></td></tr>
			<tr><td>验证码：</td><td class="right">
			<input name="state" type="text" id="checkCode" title="验证码区分大小写" maxlength="4" onblur="checkCode2()" />
			<img id="kaptcha" src="kaptcha.htm" />
			<span id="error">${requestScope.error}</span> 
			</td>
			<td><input type="hidden" value="0" id="hidden_input" name="hidden"/>
			<div id="codeText" class="message_div"></div></td>
			</tr>
            <tr><td></td><td class="right"><input type="submit" id="submit" value="登录" onclick="loginValidate()"/></td></tr>
    </table>
    </form>
  </div>
  <jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
