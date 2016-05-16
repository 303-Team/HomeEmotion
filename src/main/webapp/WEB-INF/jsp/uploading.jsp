<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'uploading.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/uploading.js"></script>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/uploading.css">
</head>
<body>
<jsp:include page="header.jsp" flush="true" />
  <form id="form1" enctype="multipart/form-data" method="post" action="">
  <table align="center">
    <tr>
    	<td><label for="fileToUpload">选择上传文件:</label></td>
    	<td class="right"><input type="file" name="fileToUpload" id="fileToUpload" onchange="fileSelected();"/></td>
    </tr>
    <tr><td>标题:</td><td class="right"><div id="fileName"></div></td></tr>
    <tr><td>大小:</td><td class="right"><div id="fileSize"></div></td></tr>
    <tr><td>视频格式:</td><td class="right"><div id="fileType"></div></td></tr>
    <tr>
    	<td></td>
	    <td class="right">
		    <div class="row">
		      <input type="button" onclick="uploadFile()" id="uploading" value="上传" />
		    </div>
	    </td>
    </tr>
    <tr><td><div id="progressNumber"></div></td></tr>
    </table>
  </form>
  <jsp:include page="footer.jsp" flush="true" />
</body>
</html>
