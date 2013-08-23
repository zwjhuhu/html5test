<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
	pageContext.setAttribute("contextPath", contextPath);
	String fulladdr = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
	fulladdr=fulladdr.substring(0, fulladdr.length()-1)+contextPath;
	pageContext.setAttribute("fulladdr", fulladdr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404</title>
<style type="text/css">
body { vertical-align: middle; }
div.center { position:absolute; top:50%; left:50%; margin:-25% 0 0 -320px; width:640px; min-height: 427px; padding: 0px; }
div.errmsg { text-align:center; width:640px; line-height:150%;}
div.errmsg span { text-align:center;}
a { text-decoration: none; color:blue }
a:hover { text-decoration: underline; }
</style>
</head>
<body>
<div class="center">
<img src="${contextPath}/resources/images/404.png" height="427" width="640"><br>
<div class="errmsg">
<!--  <span>请求地址: ${pageContext.request.requestURI}</span>
<span>ip地址: ${pageContext.request.remoteHost}</span>
-->
<br/>
<a href="javascript:history.back();" id="sendReport" rel="nofollow">点这里返回</a>
</div>
</div>
</body>
</html>