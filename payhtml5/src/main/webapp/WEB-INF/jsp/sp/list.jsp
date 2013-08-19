<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" > <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" > <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" > <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html> <!--<![endif]-->
<head>
<title>sp/manager</title>
<%@include file="../header.jspf" %>
<style type="text/css">
#sptable tbody tr:hover { background: none repeat scroll 0 0 rgba(192, 192, 192, 0.8); }
#spinftable {
	 width:100%;
}
#spinftable td {
	padding:2px;
}
#spinftable tr input[type="text"],#spinftable tr input[type="email"]{
	width:90%;
}
</style>
<script type="text/javascript">
var spm = {};
spm.resetForm = function(){
	var fds = spm.form.find('input');
	fds.each(function(i){
		var f = $(this);
		if(f.attr('type')=='text'||f.attr('type')=='email'||f.attr('type')=='hidden'){
			f.val('');
		}else if(f.attr('type')=='radio'){
			f.prop('checked',false);
		}else if(f.attr('type')=='button'){
			if(f.val()=='修改'){
				f.hide();
			}else if(f.val()=='删除'){
				f.hide();
			}else if(f.val()=='添加'){
				f.show();
			}else if(f.val()=='取消'){
				f.show();
			}
		}
	});
};
spm.newSp = function(){
	spm.resetForm();
	if(spm.div.css('display')=='none')
		spm.div.show('normal');
};
$(function(){
	$( "#dialog" ).dialog({ autoOpen: false,modal:true,width:400,
		title:'提示',
		closeText:'关闭',
		buttons:[{
			text:'确定',
			click:function(){
				$(this).dialog("close");
			}
		}],
		close:function(event,ui){
		window.location.href="./manager";
	}});
	spm.div = $("div[name='spformwrapper']");
	spm.div.hide();
	spm.form = $("form[name='spform']");
	var divTimer='';
	var div = spm.div;
	div.mouseenter(function(){
		if(divTimer)
			clearTimeout(divTimer);
	});
	div.mouseleave(function(){
		divTimer = setTimeout(function(){
			div.fadeOut();
			divTimer = '';
		},1000);
	});
	
	//分页设置
	$("#pager_go").click(function(event){
		var page = $("#pager input").val();
		var page = parseInt(page);
		if(isNaN(page)||page<1){
			page = 1;
		}
		this.href+=page;
	});
	//添加点击事件
	var trs = $("tr.myclick").on('click',function(){
		var spid = $(this).find("td:first").text();
		showspinf(spid);
	});
	
	$("div[name='newsp']>a").click(function(event){
		spm.newSp();
		event.preventDefault();
	});
	
	spm.form.find("input[type='button']").each(function(i){
		var f = $(this);
		if(f.val()=='修改'){
			f.click(function(){
				$.post('update',spm.form.serialize(),function(data){
					if(data.success){
						$('#dialog div[name="text"]').html("修改数据成功！");
						$( "#dialog" ).dialog("open");
						//window.location.href="./manager";
					}else{
						alert(data.message);
					}
				});
			});
		}else if(f.val()=='添加'){
			f.click(function(){
				$.post('add',spm.form.serialize(),function(data){
					if(data.success){
						$('#dialog div[name="text"]').html("添加成功！");
						$( "#dialog" ).dialog("open");
					}else{
						alert(data.message);
					}
				});
			});
		}else if(f.val()=='删除'){
			
			f.click(function(){
				var spid = spm.form.find('input[type="hidden"]').val();
				$.get('delete/'+spid,function(data){
					if(data.success){
						$('#dialog div[name="text"]').html("删除成功！");
						$( "#dialog" ).dialog("open");
					}else{
						alert(data.message);
					}
				});
			});
		}else if(f.val()=='取消'){
			f.click(function(){
				spm.div.fadeOut();
			});
		}
	});
	
	function showspinf(spid){
		if(spid){
			$.get("get/"+spid, function(data){
				spm.form.find("input").each(function(i){
					var value = data[this.name];
					var f = $(this);
					if(f.attr('type')=='text'||f.attr('type')=='email'||f.attr('type')=='hidden'){
						f.val(value);
					}else if(f.attr('type')=='radio'){
						if(data['spstate']){
							if(f.val()=='1'){
								f.prop("checked",true);
							}
						}else{
							if(f.val()=='0'){
								f.prop("checked",true);
							}
						}
					}else if(f.attr('type')=='button'){
						if(f.val()=='修改'){
							f.show();
						}else if(f.val()=='删除'){
							f.show();
						}else if(f.val()=='添加'){
							f.hide();
						}else if(f.val()=='取消'){
							f.hide();
						}
					}
				  });
					spm.div.show('normal');
				});
		}
	}
	
	
	
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<div id="wrapper">
	
		
		<div class="main">
		<div class="container">
		
		<%@include file="../nav.jspf" %>
		<!-- 表单
		================================================== -->
		<div name="newsp">
			<a class="button green" href="#">新增 <span>sp</span></a>
		</div>
		<!-- 表单
		================================================== -->
		<div name="spformwrapper">
				<div class="divider2"></div>
				<h4>sp详细信息</h4>
				<br />
				<form id="spform" name="spform" method="post" action="#" />
				<input type="hidden" name="spid" form="spform"/>
				<table id="spinftable">
					<tr>
					<td>
						sp编码:<input type="text" name="spcode" form="spform"/>
					</td>
					<td>
						sp名称:<input type="text" name="spname" />
					</td>
					</tr>
					<tr>
					<td>
						完整名称:<input type="text" name="spfullname" />
					</td>
					<td>
						折扣率:<input type="text" name="discountrate" />
					</td>
					</tr>
					<tr>
					<td>
						email:<input type="email" name="email" />
					</td>
					<td>
						本地编号:<input type="text" name="localid" />
					</td>
					</tr>
					<tr>
					<td>
						启用:<input type="radio" name="spstate" value="1"/>
					</td>
					<td>
						不启用:<input type="radio" name="spstate" value="0"/>
					</td>
					</tr>
					<tr>
					<td colspan="2">
						<div style="width:40%;margin:0 auto;">
						<input type="button" style="width:20%;margin:0 20%;" class="button green" value="修改"/>
						<input type="button" style="width:20%" class="button" value='删除'/>	
						<input type="button" style="width:20%;margin:0 20%;" class="button green" value="添加"/>
						<input type="button" style="width:20%" class="button" value='取消'/>	
						</div>
					</td>
					</tr>
				</table>
						
			</div>
				<!-- Pricing table
				================================================== -->
				<div class="pricing_page sixteen columns row">
					<h2 class="separator_title"><span>sp</span> 信息</h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
					<br />
					<table id="sptable" class="pricing">
					<thead>
						<tr>
							<th>id <span>spid</span></th>
							<th>编码 <span>sp标识</span></th>
							<th>名称 <span>sp名称</span></th>
							<th>联系方式 <span>email地址</span></th>
							<th>状态 <span>是否启用</span></th>
						</tr>
					</thead>
					
					<tbody>
					
					<c:choose>
						<c:when test='${pageModel.total==0}'>
							<tr>
								<td colspan='4'><strong>没有数据</strong></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items='${pageModel.datas}' var='item'>
							<tr class="myclick">
								<td>${item.spid}</td>
								<td>${item.spcode}</td>
								<td>${item.spname}</td>
								<td>${item.email}</td>
								<td>
									<c:choose>
										<c:when test='${item.spstate == 1}'>
											<span class="available"><strong>启用</strong> 
										</c:when>
										<c:otherwise>
											<span class="not_available"><strong>不启用</strong> 
										</c:otherwise>
									</c:choose>
									</span>
								</td>
							</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>

<!--  						<tr>
							<td><strong>5</strong> Products</td>
							<td><strong>25</strong> Products</td>
							<td><strong>100</strong> Products</td>
							<td><strong>300</strong> Products</td>
						</tr>
						
						<tr>
							<td><strong>1</strong> User</td>
							<td><strong>25</strong> Users</td>
							<td><strong>75</strong> Users</td>
							<td><strong>175</strong> Users</td>
						</tr>
						
						<tr>
							<td><strong>1GB</strong> Storage</td>
							<td><strong>5GB</strong> Storage</td>
							<td><strong>10GB</strong> Storage</td>
							<td><strong>30GB</strong> Storage</td>
						</tr>
						
						<tr>
							<td><strong>500GB</strong> Bandwidth</td>
							<td><strong>750GB</strong> Bandwidth</td>
							<td><strong>1TB</strong> Bandwidth</td>
							<td><strong>10TB</strong> Bandwidth</td>
						</tr>
						
						<tr>
							<td><strong>5</strong> Subdomains</td>
							<td><strong>10</strong> Subdomains</td>
							<td><strong>20</strong> Subdomains</td>
							<td><strong>40</strong> Subdomains</td>
						</tr>
						
						<tr>
							<td><strong>25GB</strong> Backup</td>
							<td><strong>50GB</strong> Backup</td>
							<td><strong>75GB</strong> Backup</td>
							<td><strong>100GB</strong> Backup</td>
						</tr>
						
						<tr>
							<td><strong>10</strong> MySQL Databases</td>
							<td><strong>30</strong> MySQL Databases</td>
							<td><strong>70</strong> MySQL Databases</td>
							<td><strong>90</strong> MySQL Databases</td>
						</tr>
						
						<tr>
							<td><span class="available"><strong>24/7</strong> Live Support</span></td>
							<td><span class="available"><strong>24/7</strong> Live Support</span></td>
							<td><span class="available"><strong>24/7</strong> Live Support</span></td>
							<td><span class="available"><strong>24/7</strong> Live Support</span></td>
						</tr>
						
						<tr>
							<td><span class="available"><strong>Debian</strong> Linux</span></td>
							<td><span class="available"><strong>Debian</strong> Linux</span></td>
							<td><span class="available"><strong>Debian</strong> Linux</span></td>
							<td><span class="available"><strong>Debian</strong> Linux</span></td>
						</tr>
						
						<tr>
							<td><span class="not_available"><strong>CentOS</strong> Linux</span></td>
							<td><span class="available"><strong>CentOS</strong> Linux</span></td>
							<td><span class="available"><strong>CentOS</strong> Linux</span></td>
							<td><span class="available"><strong>CentOS</strong> Linux</span></td>
						</tr>
						
						<tr>
							<td><span class="not_available"><strong>Virtualmin</strong> Control Panel</span></td>
							<td><span class="available"><strong>Virtualmin</strong> Control Panel</span></td>
							<td><span class="available"><strong>Virtualmin</strong> Control Panel</span></td>
							<td><span class="available"><strong>Virtualmin</strong> Control Panel</span></td>
						</tr>
						
						<tr>
							<td><a class="button" href="#">Sign Up <span>Free</span></a></td>
							<td><a class="button" href="#">Sign Up <span>$39/mo</span></a></td>
							<td class="price"><a class="button green" href="#">Sign Up <span>$89/mo</span></a></td>
							<td><a class="button" href="#">Sign Up <span>$139/mo</span></a></td>
						</tr>
-->						
					</tbody>
					</table>
					<div id="pager" style="width:100%;margin-top:3px;">
					<%
						com.skywin.model.PageModel model = (com.skywin.model.PageModel)request.getAttribute("pageModel");
						int total = ((Long)model.getTotal()).intValue();
						int size = model.getSize();
						int curPage = model.getPage();
						int pageCount = total/size+(total%size>0?1:0);
						int start = 1;
						int end = pageCount;
						if(pageCount>10){
							if(curPage<=5){
								start = 1;
								end = 10;
							}else {
								start = curPage-4;
								end = curPage+5;
								if(end>pageCount){
									start-=end-pageCount;
									end = pageCount;
								}
							}
						}else{
							start =1;
							end = pageCount;
						}
						if(end>pageCount)
							end=pageCount;
						if(start<1){
							start = 1;
						}
						request.setAttribute("pageCount", pageCount);
						request.setAttribute("start", start);
						request.setAttribute("end", end);
					%>
					<a class="button green" href="manager?page=${pageModel.page-1>0?pageModel.page-1:1}">上一页</a>
					<c:forEach var='item' begin='${start}' end='${end}' step='1'>
							<c:choose>
								<c:when test='${item==pageModel.page}'>
									<a class="button" href="#">${item}</a>
								</c:when>
								<c:otherwise>
									<a class="button green" href="manager?page=${item}">${item}</a> 
								</c:otherwise>
							</c:choose>
					</c:forEach>
					<a class="button green" href="manager?page=${pageModel.page+1>pageCount?pageCount:pageModel.page+1}">下一页</a>
						<span style="position:relative;left:10%;">
						<span>当前第${pageModel.page}页,每页显示${pageModel.size}条,共${pageModel.total}条记录</span>
						<input type="text" style="display:inline;width:5%"/>
						<a id="pager_go" class="button green" href="manager?page=">转到</a>
						</span>
					</div>
					<br /><br />
				</div>
				<!-- END sidebar -->
		</div>
		<!-- END container -->
		<a id="goto_top" href="#"></a>
		</div>
		<!-- END main -->
		
	</div>
	<div id="dialog" style="z-index:100;">
	<div name="text" style="width:100%;text-align:center"></div>
	</div>
	<!-- END wrapper -->
	<%@include file="../footer.jspf" %>
	<!-- END footer -->

</body>
</html>