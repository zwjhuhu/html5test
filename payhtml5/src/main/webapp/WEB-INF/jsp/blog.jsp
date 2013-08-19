<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<title>blog</title>
<%@include file="header.jspf" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<div id="wrapper">
	
		
		<div class="main">
		<div class="container">
		<%@include file="nav.jspf" %>
				<!-- Blog Page Title
				================================================== -->
				<div class="sixteen columns">
					<h2 class="separator_title"><span>Blog</span></h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
				</div>
				<!-- END Blog Page Title -->
				
				
				<!-- Blog Content
				================================================== -->
				<div class="blog_content twelve columns row">
					<div class="post twelve columns row alpha">
						<div class="pic twelve columns alpha">
							<a class="fancybox" href="${contextPath}/resources/images/blog/blog_post1.png"><img src="${contextPath}/resources/images/blog/blog_post1.png" alt="" /></a>
							<div class="date">18 May</div>
						</div>
						<div class="details twelve columns alpha">
							<a class="date" href="#">May 18, 2012</a>
							<a class="user" href="#">John Doe</a>
							<a class="category" href="#">Webdesign</a>
							<a class="comments" href="#">6 Comments</a>
						</div>
						<div class="content twelve columns alpha">
							<h4>The MacBook Air wedge aesthetic: Now an Apple patent</h4>
							<p>Duis vitae elit dolor. Nunc ut erat urna, vel bibendum tortor. Integer vulputate turpis vitae est sagittis placerat. Maecenas leo ante, rutrum nec consectetur at, pellentesque in purus. Nulla eget odio et massa pellentesque volutpat et id nibh. Curabitur sit amet massa ligula, vitae porta velit. Vivamus venenatis pulvinar libero vel facilisis. Praesent elementum blandit neque eget molestie. Fusce pellentesque, tellus nec tempor luctus, erat libero rutrum justo, cursus pulvinar purus massa et augue.</p>
							<a class="more" href="blog_post">read more</a>
						</div>
					</div>
					
					
					<div class="post twelve columns row alpha">
						<div class="pic twelve columns alpha">
							<a class="fancybox" href="${contextPath}/resources/images/blog/blog_post2.png"><img src="${contextPath}/resources/images/blog/blog_post2.png" alt="" /></a>
							<div class="date">17 Apr</div>
						</div>
						<div class="details twelve columns alpha">
							<a class="date" href="#">Apr 17, 2012</a>
							<a class="user" href="#">John Doe</a>
							<a class="category" href="#">Webdesign</a>
							<a class="comments" href="#">6 Comments</a>
						</div>
						<div class="content twelve columns alpha">
							<h4>Apple TV to get its own SDK with apps to follow, report says</h4>
							<p>Duis vitae elit dolor. Nunc ut erat urna, vel bibendum tortor. Integer vulputate turpis vitae est sagittis placerat. Maecenas leo ante, rutrum nec consectetur at, pellentesque in purus. Nulla eget odio et massa pellentesque volutpat et id nibh. Curabitur sit amet massa ligula, vitae porta velit. Vivamus venenatis pulvinar libero vel facilisis. Praesent elementum blandit neque eget molestie. Fusce pellentesque, tellus nec tempor luctus, erat libero rutrum justo, cursus pulvinar purus massa et augue.</p>
							<a class="more" href="blog_post">read more</a>
						</div>
					</div>
					
					
					<div class="post twelve columns row alpha">
						<div class="pic twelve columns alpha">
							<a class="fancybox" href="${contextPath}/resources/images/blog/blog_post3.png"><img src="${contextPath}/resources/images/blog/blog_post3.png" alt="" /></a>
							<div class="date">17 Apr</div>
						</div>
						<div class="details twelve columns alpha">
							<a class="date" href="#">Apr 17, 2012</a>
							<a class="user" href="#">John Doe</a>
							<a class="category" href="#">Webdesign</a>
							<a class="comments" href="#">6 Comments</a>
						</div>
						<div class="content twelve columns alpha">
							<h4>Olympus confirms 7 percent reduction in workforce</h4>
							<p>Duis vitae elit dolor. Nunc ut erat urna, vel bibendum tortor. Integer vulputate turpis vitae est sagittis placerat. Maecenas leo ante, rutrum nec consectetur at, pellentesque in purus. Nulla eget odio et massa pellentesque volutpat et id nibh. Curabitur sit amet massa ligula, vitae porta velit. Vivamus venenatis pulvinar libero vel facilisis. Praesent elementum blandit neque eget molestie. Fusce pellentesque, tellus nec tempor luctus, erat libero rutrum justo, cursus pulvinar purus massa et augue.</p>
							<a class="more" href="blog_post">read more</a>
						</div>
					</div>
					
					
					
					<div class="pagination sixteen columns row alpha">
						<a class="active" href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a class="next" href="#">Next</a>
					</div>
					
				</div>
				<!-- END Blog Content -->
				
				
				<!-- Blog Sidebar
				================================================== -->
				<div class="blog_sidebar four columns row">
					
					<div class="four columns alpha">
						<input type="text" id="search" name="search" placeholder="Enter your search" />
					</div>
					
					<div class="categories four columns alpha">
						<div class="title">Blog Categories</div>
						<ul>
							<li><a href="#">Webdesign<span>28</span></a></li>
							<li><a href="#">CMS Development<span>37</span></a></li>
							<li><a href="#">Mobile Platform<span>45</span></a></li>
						</ul>
					</div>
					
					<div class="archive four columns alpha">
						<div class="title">Blog Archive</div>
						<ul>
							<li><a href="#">June 2012<span>259</span></a></li>
							<li><a href="#">May 2012<span>347</span></a></li>
							<li><a href="#">April 2012<span>458</span></a></li>
						</ul>
					</div>
					
					<div class="latest_tweets four columns alpha">
						<div class="title">Latest Tweets</div>
						<div id="tweets"></div>
					</div>
					
					<div class="popular_tags four columns alpha">
						<div class="title">Popular Tags</div>
						<a href="#">application</a>
						<a href="#">theme</a>
						
						<a href="#">iPhone</a>
						<a href="#">Webdesign</a>
						
						<a href="#">Mac</a>
						<a href="#">HTML5</a>
					</div>
					
					<div class="banners four columns alpha">
						
						<div class="four columns alpha">
							<a href="#"><img src="${contextPath}/resources/images/mojo-sparkle-180x150.png" alt="" /></a>
						</div>
						
					</div>
					
					
					
				</div>
				<!-- END Blog Content -->
				
				
				
				
				
				
				
			
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