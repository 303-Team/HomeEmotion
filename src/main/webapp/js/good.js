function good(id) {
	var type = $('#type').val();
	if (flag) {
		$.ajax({
			type : 'post',
			async : true,
			dataType : 'text',
			data : {'id' : id,'type':type},
			url : "/HomeEmotions/good.do",
			success : function(result) {
				//操作成功
				if (result!=null&&result!="") {
					alert(result);
				}
			},
			error : function(x) {
				  alert(2)
			}
		});
		flag = false;
	}
}
var flag = true;