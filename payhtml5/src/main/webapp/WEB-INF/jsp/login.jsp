<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>登陆界面</title>
<!--          <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
-->
        <link rel="shortcut icon" href="resources/favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="resources/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/animate-custom.css" />
    </head>
    <body>
        <div class="container">
            <header>
                <h1>欢迎使用广东移动XXX系统<span>with HTML5 and CSS3</span></h1>
            </header>
            <section>				
                <div id="container_demo" >
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="login"  method="post"> 
                                <h1>登录</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" >用户名: </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="请输入用户名"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">密码: </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="请输入密码" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="1" /> 
									<label for="loginkeeping">保持一周登录状态</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>