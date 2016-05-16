<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>家乡话</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link href="css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/player.css">
	<link rel="stylesheet" type="text/css" href="css/language.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
	<script type="text/javascript" src="js/jplayer.playlist.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function(){
	
		new jPlayerPlaylist({
			jPlayer: "#jquery_jplayer_1",
			cssSelectorAncestor: "#jp_container_1"
		}, [
			{
				title:"Cro Magnon Man",
				mp3:"http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3",
				oga:"http://www.jplayer.org/audio/ogg/TSP-01-Cro_magnon_man.ogg"
			},
			{
				title:"Tempered Song",
				mp3:"http://www.jplayer.org/audio/mp3/Miaow-01-Tempered-song.mp3",
				oga:"http://www.jplayer.org/audio/ogg/Miaow-01-Tempered-song.ogg"
			},
			{
				title:"Bubble",
				free:true,
				mp3:"http://www.jplayer.org/audio/mp3/Miaow-07-Bubble.mp3",
				oga:"http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
			},
			{
				title:"Lismore",
				mp3:"http://www.jplayer.org/audio/mp3/Miaow-04-Lismore.mp3",
				oga:"http://www.jplayer.org/audio/ogg/Miaow-04-Lismore.ogg"
			},
			{
				title:"The Separation",
				mp3:"http://www.jplayer.org/audio/mp3/Miaow-05-The-separation.mp3",
				oga:"http://www.jplayer.org/audio/ogg/Miaow-05-The-separation.ogg"
			},
			{
				title:"Beside Me",
				mp3:"http://www.jplayer.org/audio/mp3/Miaow-06-Beside-me.mp3",
				oga:"http://www.jplayer.org/audio/ogg/Miaow-06-Beside-me.ogg"
			},
			{
				title:"Cyber Sonnet",
				mp3:"http://www.jplayer.org/audio/mp3/TSP-07-Cybersonnet.mp3",
				oga:"http://www.jplayer.org/audio/ogg/TSP-07-Cybersonnet.ogg"
			},
			{
				title:"Hidden",
				mp3:"http://www.jplayer.org/audio/mp3/Miaow-02-Hidden.mp3",
				oga:"http://www.jplayer.org/audio/ogg/Miaow-02-Hidden.ogg"
			},
			{
				title:"Lentement",
				free:true,
				mp3:"http://www.jplayer.org/audio/mp3/Miaow-03-Lentement.mp3",
				oga:"http://www.jplayer.org/audio/ogg/Miaow-03-Lentement.ogg"
			},
			{
				title:"Thin Ice",
				mp3:"http://www.jplayer.org/audio/mp3/Miaow-10-Thin-ice.mp3",
				oga:"http://www.jplayer.org/audio/ogg/Miaow-10-Thin-ice.ogg"
			}
		], {
			swfPath: "../../dist/jplayer",
			supplied: "oga, mp3",
			wmode: "window",
			useStateClassSkin: true,
			autoBlur: false,
			smoothPlayBar: true,
			keyEnabled: true
		});
	});
	//]]>
	</script>
  </head>
  
  <body>
  <jsp:include page="header.jsp" flush="true" />
  <div id="audio_div">
    <div id="jquery_jplayer_1" class="jp-jplayer"></div>
			<div id="jp_container_1" class="jp-audio" role="application" aria-label="media player">
				<div class="jp-type-playlist">
					<!-- 放前面 -->
					<div class="jp-gui jp-interface">
						<div class="jp-controls">
							<button class="jp-previous" role="button" tabindex="0">previous</button>
							<button class="jp-play" role="button" tabindex="0">play</button>
							<button class="jp-next" role="button" tabindex="0">next</button>
							<button class="jp-stop" role="button" tabindex="0">stop</button>
						</div>
						<div class="jp-progress">
							<div class="jp-seek-bar">
								<div class="jp-play-bar"></div>
							</div>
						</div>
						<div class="jp-volume-controls">
							<button class="jp-mute" role="button" tabindex="0">mute</button>
							<button class="jp-volume-max" role="button" tabindex="0">max volume</button>
							<div class="jp-volume-bar">
								<div class="jp-volume-bar-value"></div>
							</div>
						</div>
						<div class="jp-time-holder">
							<div class="jp-current-time" role="timer" aria-label="time">&nbsp;</div>
							<div class="jp-duration" role="timer" aria-label="duration">&nbsp;</div>
						</div>
						<div class="jp-toggles">
							<button class="jp-repeat" role="button" tabindex="0">repeat</button>
							<button class="jp-shuffle" role="button" tabindex="0">shuffle</button>
						</div>
					</div>
					<div class="jp-playlist">
						<ul>
							<li>&nbsp;</li>
						</ul>
					</div>
				</div>
			</div>
		<div id="translate_div"><p>译文</p></div>
		<div class="clear"></div>
  </div>
  <jsp:include page="comment.jsp" flush="true" />
  <jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
