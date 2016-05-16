$(document).ready(
			function(){
				 selectCheckPayStats("address","${User.address}");
			}
		);
		
		//定义一个全局api，这样操作起来比较灵活
        var api = null;
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.readAsDataURL(input.files[0]);
                reader.onload = function (e) {
                    $('#cutimg').removeAttr('src');
                    $('#cutimg').attr('src', e.target.result);
                    api = $.Jcrop('#cutimg', {
                        setSelect: [ 20, 20, 200, 200 ],
                        aspectRatio: 1,
                        onSelect: updateCoords
                    });
                };
                if (api != undefined) {
                    api.destroy();
                }
            }
            function updateCoords(obj) {
                $("#x").val(obj.x);
                $("#y").val(obj.y);
                $("#w").val(obj.w);
                $("#h").val(obj.h);
            };
        }

/**
 * 修改select的option默认显示项的方法
 * @param id
 * @param value
 */
function selectCheckPayStats(id,value)
{
	//获得下拉列表的id
	var select = document.getElementById(id);
	//获得下拉列表的所有option
	var options = select.options;
	//循环获得对应的节点
	for(var i=0;i<options.length;i++)
	{
		 //获得节点的值和后台传来的值进行比较
		 if (options[i].value == value)
		 {
		  //如果当前节点与后台传来的值一致，则将当前节点设置为选中状态，并跳出循环
		      options[i].selected = true;
		      break;
		 }
	 }
}

/*密码验证*/
function checkPassword1(){
	var pass1Text=document.getElementById("pass1Text");
	var newpassword=$("#password1").val().trim();
	var regex=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;
	if(newpassword.length!=0){
		if(newpassword.match(regex)==null){
			var message="请输入8~16位的数字和字母密码!";
			//alert("请输入不少于8位的数字加字母组合密码");
		}else{
			var message="ok";
		} 
	}else{
		var message="密码不能为空!";
	}
	pass1Text.innerHTML=message;
}
/*确认密码校验*/
function checkPassword2(){
	var pass2Text=document.getElementById("pass2Text");
	var password1=$("#password1").val().trim();
	var password2=$("#password2").val().trim();
	if(password2.length != 0){
		if(password2==password1){
			var message="ok";
		}else{
			var message="确认密码与密码不一致!";
		}
	}else{
		var message="确认密码不能为空!";
	}
	pass2Text.innerHTML=message;
}