<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>tuto注册</title>
    <link rel="stylesheet" media="screen" href="css/css.css" />
    <link rel="stylesheet" type="text/css" href="js/sweetalert/sweetalert.css">
</head>
<div style="display:none"><p><a href="http://mathiasbynens.be/demo/jquery-size" target="_blank" data-mce-href="http://mathiasbynens.be/demo/jquery-size"></a></p><p></p></div>
<form id="msform" method="post">
    <!-- progressbar -->
    <ul id="progressbar">
        <li class="active">账户设置</li>
        <li>短信验证</li>
        <li>个人信息</li>
    </ul>
    <!-- fieldsets -->
    <fieldset>
        <h2 class="fs-title">创建你的账户</h2>
        <h3 class="fs-subtitle">第一步</h3>
        <input type="text" id="phone" name="phone" placeholder="手机号" />
        <input type="password" name="password" placeholder="密码" />
        <input type="password" name="repassword" placeholder="确认密码" />
        <input type="button" name="next" class="next action-button" value="下一步" />
    </fieldset>
    <fieldset>
        <h2 class="fs-title">验证账户</h2>
        <h3 class="fs-subtitle">第二步</h3>
        <input type="text" name="phoneCode" placeholder="手机号验证" />
        <div id="hiddenVal">

        </div>

        <input type="button" name="validationButton" value="获取验证码" onclick="valdate1()" />

        <input type="button" name="previous" class="previous action-button" value="上一步" />
        <input type="button" name="next" class="next action-button" value="下一步" />
    </fieldset>
    <fieldset>
        <h2 class="fs-title">个人详情</h2>
        <h3 class="fs-subtitle">第三步</h3>
        <input type="text" name="name" placeholder="姓名" />

        <input type="text" name="email" placeholder="邮箱" />


        <input type="button" name="previous" class="previous action-button" value="上一步" />
        <input type="submit" name="submit" class="action-button" value="提交" />
    </fieldset>
</form>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.min.js" type="text/javascript"></script>
<script src="js/jQuery.time.js" type="text/javascript"></script>
<script src="js/jquery-validation/jquery.form.js" type="text/javascript"></script>
<script src="js/jquery-validation/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-validation/localization/messages_zh.min.js"></script>
<script src="js/sweetalert/sweetalert.min.js" type="text/javascript"></script>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>

</body>
</html>
<script>
    <%--$.validator.setDefaults({--%>
        <%--errorPlacement:function(error,element) {--%>
            <%--error.appendTo(element.parent().parent());--%>
        <%--}--%>
    <%--})--%>
    $.validator.setDefaults({
        errorPlacement:function(error,element) {
            error.appendTo(element.parent().parent());
        }
    })


        $("#msform").validate({
            onkeyup:null,
            rules:{
                "phone":{
                    "required":true,
                },
                "password":{
                    "required":true

                },
                "repassword":{
                    "required":true,
                    "equalTo":"#password"
                }
            },
            messages:{

                "phone":{
                    "required":"请输入手机号"
                },
                "password":{
                    "required":"请输入密码"
                },
                "repassword":{
                    "required":"请确认密码",
                    "equalTo":"两次输入密码不同"
                }
            },
            submitHandler:function(form){
                $(form).ajaxSubmit({
                    type:'post',
                    url: 'doRegister',
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
                                        location.href = "http://localhost:8089/tuto";
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
        });








//    $.ajax({
//        url:"",
//        data:"",
//        dataType:"",
//        success:function(data){
//
//            if(data!=null){
//                var str="";
//            }
//
//        },
//        error:function(){
//            alert("服务器错误");
//        }
//    })



    function valdate1(){
        var phoneNum=$("#phone").val();
        $.ajax({
            url:"phone/Validation",
            data:{"phone":phoneNum},
            type:"post",
            dataType:"json",
            success:function(data){

                if(data!=null){
                    var str="<input type=\"hidden\" name=\"reCode\" value=\""+data+"\" />";
                    $("#hiddenVal").html(str);
                }else{
                    alert("未知错误");
                }


            },
            error:function(){
                alert("服务器错误");
            }
        })
    }
</script>
