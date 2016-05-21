	//<![CDATA[
	$(document).ready(function(){
		var id = $('#fid').val();
		var dataList;
		$.ajax({
			type : 'post',
			async : false,
			dataType : 'json',
			data : {'id' : id},
			url : "/HomeEmotions/getAu.do",
			success : function(result) {
				//操作成功
				dataList = result;
			},
			error : function(x) {
				  alert(2)
			}
		});
		var ggg =  [
			{
				title:'ddd',
				mp3:"audio/WhitneyHouston.mp3"
			}
		];
		ggg[0].title = dataList[0].proName;
		ggg[0].mp3 = "audio/"+dataList[0].auName;
		new jPlayerPlaylist({
			jPlayer: "#jquery_jplayer_1",
			cssSelectorAncestor: "#jp_container_1"
		},ggg, {
			swfPath: "../../dist/jplayer",
			supplied: "oga, mp3",
			wmode: "window",
			useStateClassSkin: true,
			autoBlur: false,
			smoothPlayBar: true,
			keyEnabled: true
		});
		$('#trans').html(dataList[0].translation);
	});
	//]]>