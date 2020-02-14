<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-4.2.1.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://www.jq22.com/jquery/font-awesome.4.7.0.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="${APP_PATH}/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${APP_PATH}/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${APP_PATH}/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${APP_PATH}/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page login-page">
    <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
            <div class="row">
                <!-- Logo & Information Panel-->
                <div class="col-lg-6">
                    <div class="info d-flex align-items-center">
                        <div class="content">
                            <div class="logo">
                                <h1>欢迎登陆</h1>
                            </div>
                            <p><h3>新城小区用户体温统计管理系统</h3></p>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form method="post" class="form-validate">
                                <div class="form-group">
                                    <input id="login-username" type="text" name="loginUsername"  required data-msg="Please enter your username" placeholder="登录账号" class="input-material">
                                </div>
                                <div class="form-group">
                                    <input id="login-password" type="password" name="loginPassword" required data-msg="Please enter your password" placeholder="密码" class="input-material">
                                </div><a id="login" href="index.html" class="btn btn-primary">登录</a>
                                <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                            <%--</form><a href="#" class="forgot-pass">Forgot Password?</a><br><small>Do not have an account? </small><a href="register.html" class="signup">Signup</a>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyrights text-center">
        <p style="color: #796AEF">Use By : <a href="#" class="external">新城小区</a>
            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
        </p>
    </div>
</div>
<!-- JavaScript files-->
<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="${APP_PATH}/vendor/popper.js/umd/popper.min.js"> </script>
<script src="https://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<script src="${APP_PATH}/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="${APP_PATH}/https://cdn.bootcss.com/Chart.js/2.7.0/Chart.min.js"></script>
<script src="${APP_PATH}/vendor/jquery-validation/jquery.validate.min.js"></script>
<!-- Main File-->
<script src="${APP_PATH}/js/front.js"></script>
</body>
</html>