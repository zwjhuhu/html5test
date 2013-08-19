<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<title>about</title>
<%@include file="header.jspf" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<div id="wrapper">
	
		
		<div class="main">
		<div class="container">
		<%@include file="nav.jspf" %>

				<!-- Shortcodes
				================================================== -->
				<div class="shortcodes sixteen columns row">
					<h2 class="separator_title"><span>Shortcodes</span></h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
					
					<div class="sixteen columns alpha">
						<h4 class="page_headline">Dropcaps</h4>
						<p><span class="dropcap">N</span>unc varius, dui sit amet scelerisque viverra, elit nunc lobortis orci, id commodo nulla lectus ac tellus. Aenean non leo augue, sit amet porta neque. Fusce sit amet ipsum sem, sit amet tincidunt risus. In id diam purus. Proin non augue elit, in tempus lacus. Morbi sit amet odio rutrum erat scelerisque suscipit sed vitae felis. Ut imperdiet urna in nunc aliquam vitae euismod lorem dapibus.</p>
						<p><span class="dropcap dark">S</span>ed eu nunc sit amet augue ornare placerat. Etiam ac lectus quis purus malesuada posuere. Nulla id quam a libero convallis egestas. Aliquam vestibulum libero nec libero sagittis egestas. Nullam porta ultricies magna ut condimentum. Nullam vestibulum, sapien et vulputate hendrerit, tellus tortor facilisis nulla, eget sollicitudin purus nunc eget velit. Nulla sit amet odio eget est placerat adipiscing. </p>
					</div>
					
					<div class="sixteen columns alpha">
						
						<div class="one-third column alpha">
							<h4 class="page_headline">Buttons</h4>
							<a class="button" href="#">Grey Button</a>
							<a class="button green" href="#">Green Button</a>
						</div>
						<div class="one-third column">
							<h4 class="page_headline">Medium Buttons</h4>
							<a class="button medium" href="#">Grey Button</a>
							<a class="button green medium" href="#">Green Button</a>
						</div>
						<div class="one-third column omega">
							<h4 class="page_headline">Large Buttons</h4>
							<a class="button large" href="#">Grey Button</a>
							<a class="button green large" href="#">Green Button</a>
						</div>
					</div>
					
					<div class="sixteen columns row alpha">
						<h4 class="page_headline">Notification Messages</h4>
						<div class="alert error">Notification! Error message</div>
						<div class="alert success">Notification! Success message</div>
						<div class="alert info">Notification! Info message</div>
						<div class="alert warning">Notification! Warning message</div>
					</div>
					
					<div class="eight columns row alpha">
						<h4 class="page_headline">Image Left</h4>
						<a class="fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_3.png"><img class="align_left" src="${contextPath}/resources/images/portfolio/portfolio2_3.png" alt="" width="150" height="120" /></a>
						<p>Nullam gravida nunc a purus gravida in blandit lacus auctor. Nulla elementum luctus dui, lobortis pharetra enim porttitor at. Ut porta nibh ac est tempus condimentum. Fusce et diam ut nisl vulputate tristique et in est. Nulla eget arcu augue. Fusce nec sapien ipsum, at accumsan lorem. Integer auctor risus at magna dictum molestie. </p>
					</div>
					<div class="eight columns row omega">
						<h4 class="page_headline">Image Right</h4>
						<a class="fancybox" href="${contextPath}/resources/images/portfolio/portfolio2_3.png"><img class="align_right" src="${contextPath}/resources/images/portfolio/portfolio2_3.png" alt="" width="150" height="120" /></a>
						<p>Nullam gravida nunc a purus gravida in blandit lacus auctor. Nulla elementum luctus dui, lobortis pharetra enim porttitor at. Ut porta nibh ac est tempus condimentum. Fusce et diam ut nisl vulputate tristique et in est. Nulla eget arcu augue. Fusce nec sapien ipsum, at accumsan lorem. Integer auctor risus at magna dictum molestie. </p>
					</div>
					
					<div class="sixteen columns row alpha">
						<h4 class="page_headline">Blockquote</h4>
						<blockquote>
						<p>Suspendisse sit amet malesuada enim. Etiam et ornare tortor. Nullam leo neque, hendrerit nec rhoncus vitae, consequat eget justo. Cras placerat, sapien vitae fringilla imperdiet, ante ipsum dignissim nisl, at tincidunt ligula erat at orci. Aenean sed magna tortor. Morbi eget ipsum vel ante facilisis ornare. Morbi sed magna sapien. Etiam est ipsum, congue at aliquam suscipit, tempor eget velit.</p>
						<h5>John Doe, <span>Facebook Inc.</span></h5>
						</blockquote>
					</div>
					
					<div class="eight columns row alpha">
						<h4 class="page_headline">Tabs</h4>
						<ul class="tabs_nav">
							<li><a href="#tab1">Tab 1</a></li>
							<li><a href="#tab2">Tab 2</a></li>
							<li><a href="#tab3">Tab 3</a></li>
						</ul>
						<div class="tab_container">
							<div id="tab1" class="tab_content">
								1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pharetra blandit sapien. Etiam vestibulum posuere arcu, id sagittis quam tincidunt a. Vivamus consequat mattis tellus, ullamcorper dignissim lacus fringilla ut. Praesent lobortis mi sed ante viverra hendrerit. Suspendisse potenti. Donec laoreet semper lectus, in suscipit orci pulvinar ac. Cras tincidunt adipiscing arcu, eget aliquam mi lobortis et.
							</div>
							<div id="tab2" class="tab_content">
								2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pharetra blandit sapien. Etiam vestibulum posuere arcu, id sagittis quam tincidunt a. Vivamus consequat mattis tellus, ullamcorper dignissim lacus fringilla ut. Praesent lobortis mi sed ante viverra hendrerit. Suspendisse potenti. Donec laoreet semper lectus, in suscipit orci pulvinar ac. Cras tincidunt adipiscing arcu, eget aliquam mi lobortis et.
							</div>
							<div id="tab3" class="tab_content">
								3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pharetra blandit sapien. Etiam vestibulum posuere arcu, id sagittis quam tincidunt a. Vivamus consequat mattis tellus, ullamcorper dignissim lacus fringilla ut. Praesent lobortis mi sed ante viverra hendrerit. Suspendisse potenti. Donec laoreet semper lectus, in suscipit orci pulvinar ac. Cras tincidunt adipiscing arcu, eget aliquam mi lobortis et.
							</div>
						</div>
					</div>
					
					<div class="eight columns row omega">
						<h4 class="page_headline">Accordion</h4>
						<div class="accordion">
							<h3>Accordion #1</h3>
							<div class="acc_content">
								1. Vulputate ante a neque bibendum lobortis. Integer consectetur elementum suscipit. Donec sed dui ante. Etiam pulvinar, elit et rutrum tristique, odio libero tincidunt est, vitae mattis lorem dui sit amet ligula. Aenean sem nisl, ornare vel scelerisque nec. Phasellus nec nibh turpis, in tincidunt elit. 
							</div>
							
							<h3>Accordion #2</h3>
							<div class="acc_content">
								2. Vulputate ante a neque bibendum lobortis. Integer consectetur elementum suscipit. Donec sed dui ante. Etiam pulvinar, elit et rutrum tristique, odio libero tincidunt est, vitae mattis lorem dui sit amet ligula. Aenean sem nisl, ornare vel scelerisque nec. Phasellus nec nibh turpis, in tincidunt elit. 
							</div>
							
							<h3>Accordion #3</h3>
							<div class="acc_content">
								3. Vulputate ante a neque bibendum lobortis. Integer consectetur elementum suscipit. Donec sed dui ante. Etiam pulvinar, elit et rutrum tristique, odio libero tincidunt est, vitae mattis lorem dui sit amet ligula. Aenean sem nisl, ornare vel scelerisque nec. Phasellus nec nibh turpis, in tincidunt elit. 
							</div>
							
						</div>
						
					</div>
					
				</div>
				<!-- END shortcodes -->
				
				
				
				
				
				
				
				
				
			
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