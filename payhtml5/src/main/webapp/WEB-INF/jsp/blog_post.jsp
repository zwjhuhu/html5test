<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<title>blog_post</title>
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
					<h2 class="separator_title"><span>Blog</span> Post</h2>
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
							
							<blockquote>
								<p>Vivamus nec dui ac felis rhoncus aliquam. Nunc non orci vestibulum ipsum aliquet ornare quis non metus. Nam pellentesque nibh sit amet velit porta ac blandit tellus sollicitudin. Integer posuere ultrices rutrum. Pellentesque a ultricies elit. Vivamus et purus dui, a lacinia tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse ac lacus odio. Maecenas ante nisi, molestie et varius tempor, commodo ut nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>
							</blockquote>
							
							<p>Donec blandit nisl vitae magna iaculis sit amet tincidunt risus venenatis. Aliquam tincidunt, metus et fermentum lobortis, nulla odio iaculis leo, vel suscipit ipsum libero non magna. Vivamus porttitor, diam eget vulputate auctor, magna libero sollicitudin turpis, nec fringilla massa velit et urna. Duis rhoncus, nunc eget elementum pellentesque, quam neque egestas est, in sagittis lacus nisl vel velit. Aliquam sagittis, nulla non commodo mollis, ligula eros dictum urna, nec pulvinar ante ligula vel neque.</p>
							
							<p>Integer et est nisi, ac sagittis metus. Aliquam ut mi quam. Integer eros felis, ullamcorper sed interdum a, aliquam eu velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam risus sapien, feugiat sed ornare sit amet, tristique eget neque.</p>

							<!--  
							<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="http://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
							<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a>
							-->
						</div>
					</div>
					
					<div class="comments twelve columns row alpha">
						<div class="divider2"></div>
						<h4>Comments</h4>
						<div class="comment twelve columns alpha">
							<div class="pic two columns alpha">
								<img src="${contextPath}/resources/images/avatars/avatar1.png" alt="" />
							</div>
							<div class="text ten columns alpha omega">
								<div class="the_comment">
									<div class="user"><span>John Doe</span> said:</div>
									<p>Mi mauris, sed congue arcu. Vestibulum in tempor dui. Fusce sit amet laoreet lacus. Aliquam sit amet risus nec dolor fermentum.</p>
								</div>
							</div>
						</div>
						
						<div class="comment twelve columns alpha">
							<div class="pic two columns alpha">
								<img src="${contextPath}/resources/images/avatars/avatar2.png" alt="" />
							</div>
							<div class="text ten columns alpha omega">
								<div class="the_comment">
									<div class="user"><span>John Doe</span> said:</div>
									<p>Mi mauris, sed congue arcu. Vestibulum in tempor dui. Fusce sit amet laoreet lacus. Aliquam sit amet risus nec dolor fermentum.</p>
								</div>
							</div>
						</div>
						
						<div class="comment twelve columns alpha">
							<div class="pic two columns alpha">
								<img src="${contextPath}/resources/images/avatars/avatar3.png" alt="" />
							</div>
							<div class="text ten columns alpha omega">
								<div class="the_comment">
									<div class="user"><span>John Doe</span> said:</div>
									<p>Mi mauris, sed congue arcu. Vestibulum in tempor dui. Fusce sit amet laoreet lacus. Aliquam sit amet risus nec dolor fermentum.</p>
								</div>
							</div>
						</div>
						
					</div>
				
					<div class="reply twelve columns alpha">
						<div class="divider2"></div>
						<h4>Leave a Reply</h4>
						<br />
						<form method="post" action="" />
							Name:<br />
							<input type="text" id="name_field" name="name" />
							
							Email:<br />
							<input type="text" id="email_field" name="email" />
							
							Message:<br />
							<textarea id="message_field" name="message" rows="6"></textarea>
							
							<input type="submit" class="button green" value="Comment" />
						</form>
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