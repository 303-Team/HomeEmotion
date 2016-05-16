<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="initial-scale=1,maximum-scale=1"/>
	<script type="text/javascript" src="js/d3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/main.css">
  </head>
  <body>

  <jsp:include page="header.jsp" flush="true" />
  <!-- 板块地图 -->
	<div >
	    <label>
	        <span id="tooltip"></span>
	    </label>
	</div>
	<script type="text/javascript">
	    var width = 1100, height = 800;
	 
	    var svg = d3.select("body").append("svg")
	            .attr("width", width)
	            .attr("height", height)
	            .attr("preserveAspectRatio", "xMidYMid")
	            .attr("viewBox", "0 0 " + width + " " + height);
	 
	    var tooltip = d3.select("#tooltip");
	 
	    var proj = d3.geo.mercator().center([105, 38]).scale(750).translate([width / 2, height / 2]);
	    var path = d3.geo.path().projection(proj);
	    
	    d3.json("json/cn.json", function (error, cn) {
	        svg.append("g")
	                .attr("class", "states")
	                .selectAll("path")
	                .data(cn.features)
	                .enter()
	                .append("path")
	                .attr("d", path)
	                .on("click", function (d) {
	                    //tooltip.style("display", null);
	                    // name @ d.properties.name
	                    //showText(d.id);
	                    window.location.href="home.do?id="+d.id;
	                })
	                //鼠标移入移出事件
/*	                .on("mouseover", function (d) {
	                    tooltip.style("display", null);
	                    // name @ d.properties.name
	                    showText(d.id)
	                })
	                .on("mouseout", function () {
	                    tooltip.style("display", "none");
	                })
*/
					//处理要显示的文字
					function showText(_id) {
					    tooltip.text(_id);
					}
	    });
	 
	</script>
	<jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
