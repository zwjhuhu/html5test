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
<!--  <style type="text/css">
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
-->
 <style>
/* IE has layout issues when sorting (see #5413) */
.group { zoom: 1 }
</style>
<script type="text/javascript">
$(function() {
	$( "#accessList" ).css("height","400px")
	.accordion({
	header: "> div > h3",
	heightStyle: "fill"
	})
	.sortable({
	axis: "y",
	handle: "h3",
	stop: function( event, ui ) {
	// IE doesn't register the blur when sorting
	// so trigger focusout handlers to remove .ui-state-focus
	ui.item.children( "h3" ).triggerHandler( "focusout" );
	}
	});
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<div id="wrapper">
	
		
		<div class="main">
		<div class="container">
		
		<%@include file="../nav.jspf" %>
	
		<!-- access list
		================================================== -->
		<div id="accessList">
			<c:choose>
				<c:when test='${empty accessMap}'>
					<strong>没有数据</strong>
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items='${accessMap}'>
						<div class="group">
							<h3>${item.key}</h3>
							<div>
								<table class="pricing">
									<thead>
										<tr>
										<th>ip地址</th>
										<th>user-agent</th>
										<th>url</th>
										<th>处理开始时间</th>
										<th>处理结束时间</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="acc" items='${item.value}'>
											<tr>
											<td>${acc.ip}</td>
											<td>${acc.useragent}</td>
											<td>${acc.url}</td>
											<td><fmt:formatDate value='${acc.starttime}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
											<td><fmt:formatDate value='${acc.endtime}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
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