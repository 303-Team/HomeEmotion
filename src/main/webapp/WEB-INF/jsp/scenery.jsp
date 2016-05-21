<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>家乡风景</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/player.css">
	<link rel="stylesheet" type="text/css" href="css/scenery.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <jsp:include page="header.jsp" flush="true" />
    <div id="middle_div"><img src="images/scenery/${src }" /></div>
    <jsp:include page="comment.jsp" flush="true" />
    <jsp:include page="footer.jsp" flush="true" />
    <input id="psrc" type="hidden" value=${src }>
    <input id="fid" type="hidden" value=${id }>
  </body>
</html>
