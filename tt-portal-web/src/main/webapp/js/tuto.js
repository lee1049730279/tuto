var Tuto = {

	checkLogin : function(){

		var _ticket = $.cookie("tt_token");
		if(!_ticket){
			return ;
		}
		$.ajax({
			url : "http://localhost:8089/tuto/user/token1/" + _ticket,
			dataType : "jsonp",
			type : "GET",
			success : function(data){
				if(data.status=true){
					var phone = data.data.phone;
					var html = "欢迎，"+phone;
					$("#loginbar1").html(html);
				}
			}
		});
	}
}

$(function(){
	// 查看是否已经登录，如果已经登录查询登录信息
    Tuto.checkLogin();
});