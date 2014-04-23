<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="utf-8">
<title>Paper Stack</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >

<script
 src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"
 type="text/javascript"></script>

<script
 src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.js"
 type="text/javascript"></script>



<script type="text/javascript">
$(document).ready(function() {
	$('#submit').click(function() {
		
	
	$('#login').validate({ 
		rules: {        	        		
			userName: "required",
			password: "required",
					 
    	},  
	    errorElement: "span" ,                              
	    messages: {
    		userName: " User Name Cant Be Blank",
    		password: " Password Cant Be Blank"
    		
	    },
    	
    	submitHandler: function(form) {
            form.submit();
        }
	});
});
});
</script>


</head>
<body>



	<div class="container">
		<section id="content">
		 	<form:form id="login" action="${pageContext.request.contextPath}/user/login" method="post" commandName="ldapUserDto">
			<c:if test="${registered}">
			User Regitered succesfully
			</c:if>
				<h1>Sign In</h1>
				<div>
					<form:input path="userName" title="Enter User name" maxlength="25" size="55" />
				</div>
				<div>
					<form:input path="password" title="Enter Password"/>
				</div>
				<div>
					<input id="submit" type="submit" value="Sign in" name="submit" > 
					<input type="reset" value="Cancel" >
					<div>
						<a href="${pageContext.request.contextPath}/user/register" id="register">Register</a><a
							href="#">Forgot password?</a>
					</div>
				</div>
			</form:form>
			<!-- form -->

		</section>
		<!-- content -->
	</div>
	<!-- container -->


</body>
</html>
