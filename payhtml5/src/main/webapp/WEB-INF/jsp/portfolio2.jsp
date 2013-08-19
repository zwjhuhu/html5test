<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<title>portfolio2</title>
<%@include file="header.jspf" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<div id="wrapper">
	
		
		<div class="main">
		<div class="container">
		<%@include file="nav.jspf" %>
				
				
				

				<!-- Portfolio 2 Columns
				================================================== -->
				<div class="portfolio sixteen columns row">
					<h2 class="separator_title"><span>Portfolio</span> 2Columns</h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
					
					<div class="twelve columns alpha">
						<ul class="sort">
							<li><a href="#">All</a></li>
							<li><a href="#">Web Design</a></li>
							<li><a href="#">Applications</a></li>
							<li><a href="#">Artwork</a></li>
							<li><a href="#">Video</a></li>
						</ul>
					</div>
					<div class="four columns omega">
						<form method="post" action="#" />
							<input class="search" type="text" name="search" placeholder="Enter your search" />
						</form>
					</div>
					


					<div class="columns2 sixteen columns alpha">


						<ul class="portfolio_sort">
							<li class="project web-design eight columns alpha">
								<a class="fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_1.png"><img src="${contextPath}/resources/images/portfolio/portfolio2_1.png" alt="" /></a>
								<h3>Title Goes Here</h3>
								<div class="description">
									Nunc eget ante at felis vehicula fringilla non et justo. Etiam posuere leo vel nibh lacinia pulvinar. Pellentesque vitae felis libero.
								</div>
								<a class="more fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_1.png"></a>
							</li>
							
							<li class="project applications eight columns alpha">
								<a class="fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_2.png"><img src="${contextPath}/resources/images/portfolio/portfolio2_2.png" alt="" /></a>
								<h3>Title Goes Here</h3>
								<div class="description">
									Nunc eget ante at felis vehicula fringilla non et justo. Etiam posuere leo vel nibh lacinia pulvinar. Pellentesque vitae felis libero.
								</div>
								<a class="more fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_2.png"></a>
							</li>
							
							<li class="project applications video eight columns alpha">
								<a class="fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_3.png"><img src="${contextPath}/resources/images/portfolio/portfolio2_3.png" alt="" /></a>
								<h3>Title Goes Here</h3>
								<div class="description">
									Nunc eget ante at felis vehicula fringilla non et justo. Etiam posuere leo vel nibh lacinia pulvinar. Pellentesque vitae felis libero.
								</div>
								<a class="more fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_3.png"></a>
							</li>
							
							<li class="project web-design applications artwork eight columns alpha">
								<a class="fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_4.png"><img src="${contextPath}/resources/images/portfolio/portfolio2_4.png" alt="" /></a>
								<h3>Title Goes Here</h3>
								<div class="description">
									Nunc eget ante at felis vehicula fringilla non et justo. Etiam posuere leo vel nibh lacinia pulvinar. Pellentesque vitae felis libero.
								</div>
								<a class="more fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_4.png"></a>
							</li>
						</ul>
						
					</div>
					
					<div class="pagination sixteen columns row alpha">
						<a class="active" href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a class="next" href="#">Next</a>
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