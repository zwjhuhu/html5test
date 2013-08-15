<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html> <!--<![endif]-->
<head>
<%@include file="header.jspf" %>
	<script>
		$(document).ready(function() {
			$(".slider .flexslider").flexslider({
				animation: "slide"
			});
		});
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<div id="wrapper">
	
		
		<div class="main">
		<div class="container">
				
				<%@include file="nav.jspf" %>
				<!-- Slider
				================================================== -->
				<div class="sixteen columns  slider clearfix">
						<div class="flexslider">
							<ul class="slides">
							    <li>
									<a href="#"><img src="resources/images/slider/slider_image1.png" alt="" /></a>
									<div class="flex-caption">Creative ideas for your business</div>
								</li>
							    <li>
									<a href="#"><img src="resources/images/slider/slider_image2.png" alt="" /></a>
									<div class="flex-caption">Your World. Delivered</div>
								</li>
								<li>
									<a href="#"><img src="resources/images/slider/slider_image3.png" alt="" /></a>
									<div class="flex-caption">Taking You Forward</div>
								</li>
							</ul>
						</div>
				</div>
				<div class="clear"></div>
				

				<!-- Content - services & recent work
				================================================== -->
				<div class="content ten columns row">
				<div class="ten columns home_services row alpha">
					<h2 class="separator_title"><span>Our</span> Services</h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
					
					<div class="service five columns alpha space">
						<div class="icon left"><img src="resources/images/service_icons/home/webdesign_icon.png" alt="" /></div>
						<div class="title left">Web Design</div>
						<div class="description">Cras porta aliquam justo sit amet elementumphas. Consectetur sit amet, euismod id libero.</div>
						<a class="more" href="#">Read more</a>  
					</div>
					<div class="service five columns row omega space">
						<div class="icon left"><img src="resources/images/service_icons/home/cms_icon.png" alt="" /></div>
						<div class="title left">CMS Development</div>
						<div class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus cursus nulla in nulla.</div>
						<a class="more" href="#">Read more</a>   
					</div>
					
					<div class="service five columns alpha">
						<div class="icon left"><img src="resources/images/service_icons/home/support_icon.png" alt="" /></div>
						<div class="title left">Support</div>
						<div class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus cursus nulla in nulla.</div>
						<a class="more" href="#">Read more</a>    
					</div>
					<div class="service five columns omega">
						<div class="icon left"><img src="resources/images/service_icons/home/seo_icon.png" alt="" /></div>
						<div class="title left">SEO</div>
						<div class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus cursus nulla in nulla.</div>
						<a class="more" href="#">Read more</a>    
					</div>
				</div>
				<div class="clear"></div>
				
				<div class="ten columns recent_work alpha">
					<h2><span>Recent</span> Work</h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
					
					<div class="project five columns alpha">
						<a class="fancybox" href="resources/images/recent_work/project1.png"><img src="resources/images/recent_work/project1.png" alt="" /></a>
						<h3>Title Goes Here</h3>
						<div class="description">Morbi accumsan odio quis enim rhoncus malesuada dapibus leo vehicula.</div>
						<a class="more" href="#"></a>
					</div>
					
					<div class="project five columns omega">
						<a class="fancybox" href="resources/images/recent_work/project2.png"><img src="resources/images/recent_work/project2.png" alt="" /></a>
						<h3>Title Goes Here</h3>
						<div class="description">Morbi accumsan odio quis enim rhoncus malesuada dapibus leo vehicula.</div>
						<a class="more" href="#"></a>
					</div>
					
					
					
				</div>
				
				
				</div>
				<!-- END content -->
				
				
				
				<!-- Sidebar
				================================================== -->
				<div class="sidebar six columns omega">
				
					<div id="news">
						<div id="heading">News & Events</div>
						<div id="content" class="six columns alpha">
							<div class="news_item">
								<div class="pic two columns">
									<img src="resources/images/avatars/avatar1.png" alt="" />
								</div>
								<div class="details four columns alpha omega">
									<div class="date">Fri, July 18</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque accumsan eleifend laoreet. Nulla facilisi. </p>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="news_item">
								<div class="pic two columns">
									<img src="resources/images/avatars/avatar2.png" alt="" />
								</div>
								<div class="details four columns alpha omega">
									<div class="date">Fri, July 18</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque accumsan eleifend laoreet. Nulla facilisi. </p>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="news_item">
								<div class="pic two columns">
									<img src="resources/images/avatars/avatar3.png" alt="" />
								</div>
								<div class="details four columns alpha omega">
									<div class="date">Fri, July 18</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque accumsan eleifend laoreet. Nulla facilisi. </p>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="clear"></div>
							
							<div class="newsletter alpha omega">
								<h4>Newsletter</h4>
								<span>Please enter your email</span>
								<input type="text" name="subscribe" placeholder="username@company.com" />
								<input class="button green medium" type="button" value="Subscribe" />
							</div>
							
						</div> 
					</div> 
				
				</div>
				<!-- END sidebar -->
				
				
				
<!--  			<div class="featured_clients sixteen columns">
				<ul>
					<li><a href="#"><img src="resources/images/clients/home/mojo.png" alt="" /></a></li>
					<li><a href="#"><img src="resources/images/clients/home/adidas.png" alt="" /></a></li>
					<li><a href="#"><img src="resources/images/clients/home/cisco.png" alt="" /></a></li>
					<li><a href="#"><img src="resources/images/clients/home/ubuntu.png" alt="" /></a></li>
					
				</ul>
				</div>
				-->
				<div class="clear"></div>
			
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