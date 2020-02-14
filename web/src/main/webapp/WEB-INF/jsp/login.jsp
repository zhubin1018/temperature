<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="${APP_PATH}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${APP_PATH}/css/login.css">
    <style>

    </style>
</head>
<body style="height:100%;">
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <div><a class="navbar-brand" href="#" style="font-size:32px;">新城小区住户体温统计管理系统</a></div>
        </div>
    </div>
</nav>

<div class="container">
    <h5 style="color:red">${param.errorMsg}</h5>
    <form class="form-signin" role="form" action="doLogin" method="post" id="loginForm">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-user"></i> 管理员登录</h2>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" name="loginAccount" id="loginAccount" placeholder="请输入登录账号"
                   autofocus>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="password" name="password" placeholder="请输入登录密码"
                   style="margin-top:10px;">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> 记住我
            </label>
            <br>
            <label>
                忘记密码
            </label>
            <label style="float:right">
                <a href="reg.html">我要注册</a>
            </label>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick="dologin()"> 登录</a>
    </form>
</div>
</body>
<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/layer/layer.js"></script>
<script>
    function dologin() {
        // 获取用户输入的用户名及密码
        var loginAccount = $("#loginAccount").val();
        var password = $("#password").val();

        // 在HTML页面中获取的值，都是字符串。
        //进行非空校验
        if ( loginAccount == "" ) {
            // alert("账号不能为空！");
            layer.msg("账号不能为空！", {time:3000, icon:5, shift:6}, function(){
                //alert("回调方法执行了");
            });
            return;
        }

        if ( password == "" ) {
            // alert("密码不能为空！");
            layer.msg("密码不能为空！", {time:3000, icon:5, shift:6}, function(){
                //alert("回调方法执行了");
            });
            return;
        }

        var loadingIndex = null;
        // 使用 ajax 进行登录
        $.ajax({
            // url 表示请求提交的地址
            url   :  "/admin/doAjaxLogin",
            data  : {
                loginAccount  :  loginAccount,
                password      :  password
            },
            beforeSend : function(){
                loadingIndex = layer.msg('正在登录，请稍后', {icon: 16});
            },
            // 请求成功之后执行的回调函数
            success : function( result ){
                if ( result.success ) {
                    window.location.href = "toMain";
                } else {
                    layer.msg("账号密码错误!!!！", {time:3000, icon:5, shift:6 }, function(){
                    });
                }
            },
            // 只要请求完成了都会执行，请求承购失败都会执行
            complete : function(){
                layer.close(loadingIndex);
            }
        });
    }


</script>
</html>