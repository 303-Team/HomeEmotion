/**
 * 
 */
function closeWindow(){
	window.close();
}
//function open(){
//	document.getElementById("upload_div").style.display="block";
//}
//function close(){
//	document.getElementById("upload_div").style.display="none";
//}
function openForms(){
	window.open ('uploading.do','newwindow','height=250,width=610,top='+(screen.height-300)/2+',left='+(screen.width-600)/2+',toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no') 
}

function videoValidate(){
	var file=document.querySelector("input[type=file]").value;
	//alert(file);
	var flag=document.getElementById("hidden_input").value;
	var msg=document.getElementsByClassName("message_td");
//	var file=document.getElementById("file_td").innerText;
	if(file==""){
		alert("请选择您要上传的视频！");
	}else{
		var pos = file.lastIndexOf(".");
		var lastname = file.substring(pos,file.length);//截取后缀名
		//alert(lastname);
		//alert(lastname.toLowerCase()!=".mp4");//false
		//var condition=lastname.toLowerCase()==".mp4" || lastname.toLowerCase()==".webm" || lastname.toLowerCase()==".ogg";
		//alert(condition);
		if(lastname.toLowerCase()==".mp4"||lastname.toLowerCase()==".webm"||lastname.toLowerCase()==".ogg"){
			var title=document.getElementById("type").value;
			//alert(title);
			document.getElementById("file_td").innerText="√";
			if(title==""){
				alert("视频的主题不能为空！");
			}else{
				document.getElementById("type_td").innerText="√";
				flag="0";
			}
		}else{
			alert("请选择mp4,webm,ogg格式的视频上传！");
		}
	}
}
function fileValidate(){
	var file=document.querySelector("input[type=file]").value;
	if(file==""){
		document.getElementById("file_td").innerText="请选择您要上传的视频！";
	}else{
		if(lastname.toLowerCase()==".mp4"||lastname.toLowerCase()==".webm"||lastname.toLowerCase()==".ogg"){
			document.getElementById("file_td").innerText="√";
		}
		else{
			document.getElementById("file_td").innerText="请选择mp4,webm,ogg格式的视频上传！";
		}
	}
}
function emptyType(){
	var title=document.getElementById("type").value;
	if(title==""){
		document.getElementById("type_td").innerText="视频的主题不能为空！";
	}else{
		document.getElementById("type_td").innerText="√";
	}
}
function illgelVideo(){
	var type=document.getElementById("type_td").innerText;
	var file=document.getElementById("file_td").innerText;
	var flag=document.getElementById("hidden_input").value;
	if(type=="√"&&file=="√"){
		flag="0";
	}else{
		flag="1";
	}
}
function showError(){
	var error=document.getElementById("error_td").innerText;
	if(error==null){
		
	}else{
		document.getElementById("error_td").style.display="block";
	}
}