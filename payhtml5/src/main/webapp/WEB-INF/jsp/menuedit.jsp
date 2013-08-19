<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<title>menuedit</title>
<%@include file="header.jspf" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<style>
.menuedit{
	width:45%;
	height:200px;
	float:left;
	margin:2px;
}

div.menuedit .heading { 
width:152px; 
height:37px; 
background:url(${contextPath}/resources/images/news_bg.png) no-repeat; 
margin-top:9px; 
padding-top:10px; 
color:#fff; 
font-family:Arial; 
font-size:15px; 
padding-left:10px; 
font-weight:bold;
}
.drag{
	width:152px; 
	text-align:'center';
	
}
</style>
<script type="text/javascript">
$(function(){
	var username='${loginUser.username}';
	var allBar = $("#availmenu");
	var selBar = $("#selmenu");
	var menus = '';
	var localMenu = '';
	var keyname=username+"_localMenus";
	if(localStorage.getItem(keyname)){
		localMenu = JSON.parse(localStorage.getItem(keyname));
		if(localMenu.length){
			//
		}else{
			if(localMenu.menus.length>0){
				menus = localMenu.menus;
				
				for(var i=0;i<menus.length;i++){
					var menu = "<li class='drag ui-state-default'>"+menus[i].text+"</li>";
					if(!menus[i].sel){
						allBar.append(menu);
					}else{
						selBar.append(menu);
					}
					
				}
			}
		}
	}
	
	// let the gallery items be draggable
	$( "#availmenu li").draggable({
		//cancel: "a.ui-icon", // clicking an icon won't initiate dragging
		revert: "invalid", // when not dropped, the item will revert back to its initial position
		containment: "document",
		helper: "clone",
		opacity:0.7,
		cursor: "move"
	});
	
	$( "#selmenu li").draggable({
		//cancel: "a.ui-icon", // clicking an icon won't initiate dragging
		revert: "invalid", // when not dropped, the item will revert back to its initial position
		containment: "document",
		helper: "clone",
		opacity:0.7,
		cursor: "move"
	});
	// let the trash be droppable, accepting the gallery items
	allBar.closest("div.menuedit").droppable({
		accept: ".drag",
		activeClass: "ui-state-highlight",
		drop: function( event, ui ) {
			resetMenu(ui.draggable,0);
	}
	});
	// let the gallery be droppable as well, accepting items from the trash
	selBar.closest("div.menuedit").droppable({
		accept: ".drag",
		activeClass: "ui-state-highlight",
		drop: function( event, ui ) {
			resetMenu(ui.draggable,1);
		}
	});
	
	function resetMenu(item,sel){
		if(sel){
			selBar.append($(item)[0]);
		}else{
			allBar.append($(item)[0]);
		}
		for(var i=0;i<menus.length;i++){
			if(menus[i].text==item.text()){
				menus[i].sel=sel;
			}
		}
		localStorage.setItem(keyname,JSON.stringify(localMenu));	
	}

});
</script>
</head>
<body>

	<div id="wrapper">
	
		
		<div class="main">
		<div class="container">
		
				<%@include file="nav.jspf" %>
				<!-- Contact
				================================================== -->
				<div class="contact sixteen columns row">
					<h2 class="separator_title"><span>自定义</span> 菜单</h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
					
					<div style="padding 5px;width:100%">
						<div class="menuedit">
							<div class="heading">可选菜单</div>
							<ul id="availmenu" >
							</ul>
						</div>
						
						<div class="menuedit">
							<div class="heading">使用菜单</div>
							<ul id="selmenu" >
							</ul>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<!-- END sidebar -->
		</div>
		<!-- END container -->
		<a id="goto_top" href="#"></a>
		</div>
		<!-- END main -->
		
	</div>
	<!-- END wrapper -->
	<%@include file="footer.jspf" %>

</body>
</html>