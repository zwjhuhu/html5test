<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
<title>contact</title>
<%@include file="header.jspf" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

	<div id="wrapper">
	
		
		<div class="main">
		<div class="container">
		
				<%@include file="nav.jspf" %>
				
				
				

				<!-- Contact
				================================================== -->
				<div class="contact sixteen columns row">
					<h2 class="separator_title"><span>Contact</span> Us</h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
					
					<div class="sixteen columns row alpha">
						<iframe width="100%" height="235" frameborder="0" scrolling="no" 
						marginheight="0" marginwidth="0" src="${contextPath}/resources/contactmap.html"></iframe>
					</div>
					
					<div class="contact_form ten columns alpha">
						<h4>Get In Touch</h4><br />
						
						<div id="responce"></div>
						
						<form id="form_contact" method="post" action="sendmail.php" />
						<div class="four columns alpha">
							Name:<br />
							<input type="text" id="name" name="name" />
						</div>
						<div class="four columns">
							Email:<br />
							<input type="text" id="email" name="email" />
						</div>
						
						<div class="eight columns alpha">
							Message:<br />
							<textarea cols="300" rows="8" id="text" name="text"></textarea>
							<input type="button" class="button green" id="contact_send" value="发送消息" />
						</div>
						</form>
						
						
					</div>
					
					<div class="contact_details six columns omega">
						<h4>Contact Information</h4>
						
						<ul class="address">
							<li class="street_address">123 Oxford Street<br />Westminster, London, UK</li>
						</ul>
						
						<ul class="phone">
							<li>+1-800-453-5577<br />+1-800-555-4637</li>
						</ul>
						
						<ul class="email">
							<li>office@company.com</li>
						</ul>
						
						<ul class="promo">
							<li><a class="pdf" href="#">Download our<br />Services Brochure</a></li>
							<li><a class="skype" href="#">Call us on<br />Skype Now!</a></li>
						</ul>
						
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