<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>视频播放</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/player.css">
	<link rel="stylesheet" href="css/px-video.css" />
	<script src="js/jquery.min.js"></script>
	<script src="js/strings.js"></script>
	<script src="js/px-video.js"></script>
	<script src="js/player.js"></script>
	<style>
		/*** for demo only ***/
		#wrapper {
			width: 1000px;
			margin: 1em auto;
			font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		}
		#brand a,
		p a {
			border: 1px #fff dotted;
		}
		#brand a:focus,
		p a:focus {
			border: 1px #999 dotted;
			outline: none;
		}
		p {
			padding-top: 1em;
		}
	</style>
  </head>
  <body>
    <jsp:include page="header.jsp" flush="true" />
		
			<div id="wrapper">
			<h1><img src="images/player/logo-accessible-HTML5-video-player.svg" width="30" height="20" alt=""> Accessible HTML5 Video Player</h1>
			
			<div class="px-video-container" id="myvid">
				<div class="px-video-img-captions-container">
					<div class="px-video-captions hide"></div>
					<video width="1000" height="565" poster="media/poster_PayPal_Austin2.jpg" controls>
						<!-- video files -->
						<source src="video/${src }" type="video/mp4" />
						
						<source src="https://www.paypalobjects.com/webstatic/mktg/videos/PayPal_AustinSMB_baseline.webm" type="video/webm" />
						
						<!-- text track file -->
						<track kind="captions" label="English captions" src="media/captions_PayPal_Austin_en.vtt" srclang="en" default />
			
						<!-- fallback for browsers that don't support the video element -->
						<div>
							<a href="video/${src }">
								<img src="media/poster_PayPal_Austin2.jpg" width="640" height="360" alt="download video" />
							</a>
						</div>
					</video>
				</div><!-- end container for captions and video -->
				<div class="px-video-controls"></div>
			</div><!-- end video container -->
			
			</div><!-- end page wrapper container -->
	<jsp:include page="comment.jsp" flush="true" >
		<jsp:param value="${id }" name="pid"/>
		<jsp:param value="0" name="type"/>
	</jsp:include>
    <jsp:include page="footer.jsp" flush="true"/>
    <input type="hidden" id = "pid" value=${id }>
    <input type="hidden" id="psrc" value=${ src }>
    <script>
	// Initialize
	new InitPxVideo({
		"videoId": "myvid",
		"captionsOnDefault": true,
		"seekInterval": 20,
		"videoTitle": "PayPal Austin promo",
		"debug": true
	});
	</script>	
  </body>
</html>
