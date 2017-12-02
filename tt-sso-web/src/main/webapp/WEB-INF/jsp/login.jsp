<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
	<meta name="author" content="GeeksLabs">
	<meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
	<link rel="shortcut icon" href="img/favicon.png">
	<link rel="stylesheet" type="text/css" href="js/sweetalert/sweetalert.css">

	<title>tuto登录</title>

	<!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- bootstrap theme -->
	<link href="css/bootstrap-theme.css" rel="stylesheet">
	<!--external css-->
	<!-- font icon -->
	<link href="css/elegant-icons-style.css" rel="stylesheet" />
	<link href="css/font-awesome.css" rel="stylesheet" />
	<!-- Custom styles -->
	<link href="css/style.css" rel="stylesheet">
	<link href="css/style-responsive.css" rel="stylesheet" />

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>

	<link rel="stylesheet" type="text/css" href="js/sweetalert/sweetalert.css">
	<![endif]-->


	<style>
		/* 以下遮罩层为demo.用户可自行设计实现 */
		#mask {
			display: none;
			position: fixed;
			text-align: center;
			left: 0;
			top: 0;
			width: 100%;
			height: 100%;
			background-color: rgba(0, 0, 0, 0.5);
			overflow: auto;
		}
		/* 可自行设计实现captcha的位置大小 */
		.popup-mobile {
			position: relative;
		}
		#popup-captcha-mobile {
			position: fixed;
			display: none;
			left: 50%;
			top: 50%;
			transform: translate(-50%, -50%);
			-webkit-transform: translate(-50%, -50%);
			z-index: 9999;
		}
	</style>

</head>

<body class="login-img3-body">

<div class="container">

	<form class="login-form" id="form1">
		<div class="login-wrap">
			<p class="login-img"><i class="icon_lock_alt"></i></p>
			<div class="input-group">
				<span class="input-group-addon"><i class="icon_profile"></i></span>
				<input type="text" class="form-control" name="phone" placeholder="手机号" autofocus>
			</div>
			<div class="input-group">
				<span class="input-group-addon"><i class="icon_key_alt"></i></span>
				<input type="password" class="form-control" placeholder="密码" name="password">
			</div>
			<div class="popup">
				<div id="popup-captcha"></div>
			</div>
			<label class="checkbox">
				<input type="checkbox" value="remember-me"> 记住我
				<span class="pull-right"> <a href="#"> 忘记密码?</a></span>
			</label>
			<button class="btn btn-primary btn-lg btn-block" type="button" id="popup-submit">登录</button>
			<button class="btn btn-info btn-lg btn-block" type="button" onclick="toRegister()">注册</button>
		</div>
	</form>

</div>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.min.js" type="text/javascript"></script>
<script src="js/jQuery.time.js" type="text/javascript"></script>
<script src="js/sweetalert/sweetalert.min.js" type="text/javascript"></script>
<script src="js/jquery-validation/jquery.form.js" type="text/javascript"></script>
<script src="js/jquery-validation/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-validation/localization/messages_zh.min.js"></script>
<script src="js/gt.js"></script>
</body>
</html>


<script>

    var handlerPopup = function (captchaObj) {
        // 成功的回调
        captchaObj.onSuccess(function () {
            var validate = captchaObj.getValidate();
            $.ajax({
                url: "pc-geetest/validate", // 进行二次验证
                type: "post",
                dataType: "json",
                data: {
                    geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode
                },
                success: function (data) {
                    if (data && (data.status === "success")) {
                        success_submit();
                    } else {

                    }
                }
            });
        });
        $("#popup-submit").click(function () {
            captchaObj.show();
        });
        // 将验证码加到id为captcha的元素里
        captchaObj.appendTo("#popup-captcha");
        // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
    };

    $.ajax({
        url: "pc-geetest/register?t=" + (new Date()).getTime(), // 加随机数防止缓存
        type: "get",
        dataType: "json",
        success: function (data) {
            // 使用initGeetest接口
            // 参数1：配置参数
            // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它做appendTo之类的事件
            initGeetest({
                gt: data.gt,
                challenge: data.challenge,
                product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
                offline: !data.success // 表示用户后台检测极验服务器是否宕机，一般不需要关注
                // 更多配置参数请参见：http://www.geetest.com/install/sections/idx-client-sdk.html#config
            },handlerPopup);
        }
    });



	function toRegister(){
	    location.href="http://localhost:8089/tuto/register";
	}

function success_submit(){

    $("#form1").ajaxSubmit({
        type:'post',
        url: 'doLogin',
        success: function(data){
            var redirectUrl = "${redirect}";
            if(data.success){
                swal({

                        title: '提示',
                        text: data.message,
                        confirmButtonText: "确定"
                    },
                    function(){
                        if (redirectUrl == "") {
                            location.href = "http://localhost:8081/tuto";
                        } else {
                            location.href = redirectUrl;
                        }
                    });
            }else{
                swal(data.message);
            }
        }
    });
}
    <%--$("#form1").validate({--%>
        <%--rules: {--%>
            <%--phone: 'required',--%>
            <%--password: 'required'--%>
        <%--} ,--%>
        <%--messages: {--%>
            <%--phone: '请输入手机号',--%>
            <%--password: '请输入密码'--%>
        <%--},--%>
        <%--submitHandler:function(form){--%>
            <%--$(form).ajaxSubmit({--%>
                <%--type:'post',--%>
                <%--url: 'doLogin',--%>
                <%--success: function(data){--%>
                    <%--var redirectUrl = "${redirect}";--%>
                    <%--if(data.success){--%>
                        <%--swal({--%>

                                <%--title: '提示',--%>
                                <%--text: data.message,--%>
                                <%--confirmButtonText: "确定"--%>
                            <%--},--%>
                            <%--function(){--%>
                                <%--if (redirectUrl == "") {--%>
                                    <%--location.href = "http://localhost:8081/tuto";--%>
                                <%--} else {--%>
                                    <%--location.href = redirectUrl;--%>
                                <%--}--%>
                            <%--});--%>
                    <%--}else{--%>
                        <%--swal(data.message);--%>
                    <%--}--%>
                <%--}--%>
            <%--});--%>
        <%--}--%>
    <%--});--%>




</script>


