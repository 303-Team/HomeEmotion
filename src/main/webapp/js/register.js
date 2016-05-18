/** 验证码刷新* */
$(document).ready(function() {
	$('#kaptcha').click(function() {
		$(this).attr('src', 'kaptcha.htm?' + Math.floor(Math.random() * 100));
	});
});
/**登录时用户名验证**/
function checkName(){
	var name=form1.username.value;
	var nameText = document.getElementById("nameText");
	if(name.length==0){
		var message = "请输入您的用户名!";
		nameText.innerHTML = message;
	}else{
		var message = "√";
		nameText.innerHTML = message;
	}
}
/**密码校验**/
function checkPass1() {
	var pass1 = form1.password.value.trim();
	var pass1Text = document.getElementById("pass1Text");
	var example = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;
	if(pass1.length != 0){
		if (!example.test(pass1)){
			var message = "请输入8~16位的数字和字母密码!";
			pass1Text.innerHTML = message;
		} else {
			var message = "√";
			pass1Text.innerHTML = message;
		}
	}else{
		var message = "请输入您的密码!";
		pass1Text.innerHTML = message;
	}
}
/* 确认密码验证 */
function checkPass2() {
	var pass2Text = document.getElementById("pass2Text");
	if(form1.repassword.value.length != 0){
		if (form1.password.value != form1.repassword.value) {
			var message = "两次输入的密码不一致!";
			pass2Text.innerHTML = message;
		} else {
			var message = "√";
			pass2Text.innerHTML = message;
		}
	}else{
		var message = "请输入确认密码!";
		pass2Text.innerHTML = message;
	}
}
/* 邮箱验证 */
function checkEmail() {
	var emailText = document.getElementById("emailText");
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
	if(form1.email.value.length != 0){
		if (!pattern.test(form1.email.value)) {
			var message = "格式不正确，请检查!";
			emailText.innerHTML = message;
		} else {
			var message = "√";
			emailText.innerHTML = message;
		}
	}else{
		var message = "请输入您的邮箱!";
		emailText.innerHTML = message;
	}
}
function valid() {
	// var agreement=form1.detail.value;
	var username = form1.usernmae.value;
	alert(username);
}
/*用户名校验*/
function nameValidate(){
	var nameText = document.getElementById("nameText");
	var name=form1.username.value;
	if(name.length==0){
		var message = "请输入您的用户名!";
		nameText.innerHTML = message;
	}else{
		$.ajax({
			type : "POST",
			url : appRoot + '/nameValidate.do',
			async : false,
			data : {
				"username" : $('#username').val()
			},
			error : function() {
				//console.error("query failed");
				nameText.innerHTML="该用户名已存在！";
			},
			success : function(data) {
				//console.log(data);
				nameText.innerHTML="√";
			}
		});
	}
	return;
}

/* 验证码校验 */
function checkCode2() {
	var codeText = document.getElementById("codeText");
	var code = form1.checkCode.value;
	if(code.length==0){
		var message="请输入验证码";
		codeText.innerHTML = message;
	}else{
		$.ajax({
			type : "POST",
			url : appRoot + '/codeValidate.do',
			async : false,
			data : {
				"state" : $('#checkCode').val()
			},
			error : function() {
				//console.error("query failed");
				codeText.innerHTML="验证码错误！";
			},
			success : function(data) {
				//console.log(data);
				codeText.innerHTML="√";
			}
		});
	}
	return;

//	var codeText = document.getElementById("codeText");
//	//var code1 = (String)(session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY));
//	
//	alert(code1);
//	var code2 = form1.checkCode.value;
//	if (code2.length == 0) {
//		var message = "请输入验证码!";
//		codeText.innerHTML = message;
//	}else{
//		var message = "";
//		codeText.innerHTML = message;
//	}  
}
function detail2(){
	var checkText=document.getElementById("checkText");
	var check = form1.detail.checked;
	if(check == false){
		var message = "尚未同意管理条例!";
		checkText.innerHTML = message;
	}else{
		var message = "√";
		checkText.innerHTML = message;
	}
}
function validate(){
	var i;
	//var content=form1.hidden.value;
	var validate=new Array(6);
	var massage;
	//alert(content);
	//alert(document.getElementsByClassName("message_div"));
	validate= document.getElementsByClassName("message_div");
	//console.log(validate);
	//alert(validate);
	for(i=0;i<validate.length;i++){
		//console.log(validate[i].innerText);
			if((validate[i].innerText)!="√"){
				form1.hidden.value="1";
			}else{
				form1.hidden.value="0";
			}
		//console.log(content);
		//alert(form1.hidden.value);//这里content判断是正确的
	}
//	if(validate[0]==""&&validate[1]==""&&validate[2]==""&&validate[3]==""&&validate[4]==""&&validate[5]==""){
//		alert("请输入注册信息!");
//	}else{
//		if(validate[0]=="√"&&validate[1]=="√"&&validate[2]=="√"&&validate[3]=="√"&&validate[4]=="√"&&validate[5]=="√"){
//			form1.hidden.value="0";
//		}else{
//			form1.hidden.value="1";
//		}
//	}
	if(form1.hidden.value=="1"){
		alert("您填写的信息有误，请检查后再提交！");
	}
}

function loginValidate(){
	var i;
	var validate=new Array(6);
//	var massage=document.getElementById("error").innerText;
	validate= document.getElementsByClassName("message_div");
	for(i=0;i<validate.length;i++){
		//console.log(validate[i].innerText);
			if((validate[i].innerText)!="√"){
				form1.hidden.value="1";
			}else{
				form1.hidden.value="0";
			}
	}
	if(form1.hidden.value=="1"){
		alert("您填写的信息有误，请检查后再提交！");
	}
}
