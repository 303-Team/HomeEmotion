<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<link rel="stylesheet" type="text/css" href="css/fileUpload.css">
<script type="text/javascript" src="js/dialog.js"></script>
<title>文件上传</title>  
</head>  
<body>  
    <%--<form action="user/fileUpload" method="post" enctype="multipart/form-data">--%>  
    <form action="${pageContext.request.contextPath}/fileUpload.do" method="post" enctype="multipart/form-data">
        <table align="center" cellspacing="5" cellpadding="5" id="upload_table">
        <tr>
        	<td><span id="error_td">${requestScope.massage}</span></td>
        	<!-- ${ reqeustScope.massage } -->
        </tr>
        <tr>
        	<td>上传：</td><td><input type="file" name="fileUpload" /></td>
        </tr>
        <tr>
        	<td>主题：</td><td><input type="text" name="pName" id="type" /></td>
        </tr>
        <tr>
        	<td>类型：</td><td><input type="radio" name="textType" value="0" checked="true"/>娱乐<input type="radio" name="textType" value="1"/>风俗<input type="radio" name="textType" value="2"/>旅行<input type="radio" name="textType" value="3"/>随记</td>
        </tr>
        <tr>
        	<td></td><td><input type="submit" value="上传" id="upload_input" /></td>
        </tr>
        </table>
    </form>  
</body>  
</html>
