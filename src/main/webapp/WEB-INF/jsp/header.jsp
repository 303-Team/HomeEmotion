<%@ page language="java" import="java.util.*,javax.servlet.http.HttpSession" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

	<link rel="stylesheet" type="text/css" href="../css/main.css">
  	<div><span id="logo_span"><a href="index.do">乡愁网</a></span></div>
    <div id="header_div">
       <ul id="part">
       <!-- 此处需要做Session判断 -->
    	<%
    		HttpSession httpSession = request.getSession(); 
       		if(httpSession.getAttribute("username")!=null){
       		%>
       			<li><a href="loginOut.do">注销</a></li>
       		<%	
       			if(httpSession.getAttribute("username").equals("admin")){
       		%>
       			<li><a href="manager.do">管理员中心</a></li>
    			<li><a href="productionManager.do">作品管理</a></li>
       		<% 	
       		}else{
       		%>
       			<li><a href="person.do"><%=httpSession.getAttribute("username")%>的个人中心</a></li>
    			<li><a href="production.do?productionType=video">我的视频</a></li>
    			<li><a href="production.do?productionType=audio">我的音频</a></li>
    			<li><a href="production.do?productionType=picture">我的图片</a></li>
    		<% 
       		}
       	}else{
        %>
        <li><a href="register.do">注册</a></li>
    	<li><a href="login.do">登陆</a></li>
        <% 	
        } %>
    	
    	
	   </ul>
    </div>
