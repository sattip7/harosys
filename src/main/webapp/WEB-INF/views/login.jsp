<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="utf-8">
<title>Paper Stack</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >

<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<%-- <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"/>
--%>

<script>
$(function() {
	$("#login").validate({ 
		rules: {        	        		
			userName: "required",
			password: "required",
					 
    	},  
	    errorElement: "span" ,                              
	    messages: {
    		name: " Enter User Name",
    		email: " Enter Password Email",
    		
	    },
    	
    	submitHandler: function(form) {
            form.submit();
        }
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
					<form:input path="userName" title="Enter the user name" maxlength="25" size="55" />
				</div>
				<div>
					<form:input path="password" title="password"/>
				</div>
				<div>
					<input type="submit" value="Sign in" name="submit" > 
					<input type="reset" value="Cancel" name="submit">
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
