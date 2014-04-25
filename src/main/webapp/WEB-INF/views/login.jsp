<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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



<%-- <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"/>
--%>



<script type="text/javascript">
$(document).ready(function() {
	$('#submit').click(function() {
	
	$("#login1").validate({ 
		rules: {        	        		
			userName: "required",
			password: "required"
					 
    	},  
	    errorElement: "span" ,                              
	    messages: {
    		userName: " Enter User Name",
    		password: " Enter Password"
    		
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
		 	<form:form id="login1" name="login1" action="${pageContext.request.contextPath}/user/login" method="post" commandName="ldapUserDto">
			<c:if test="${registered}">
			User Regitered succesfully
			</c:if>
				<h1>Sign In</h1>
				<div style="color:red">
					<form:input path="userName" title="Enter the user name" maxlength="25" size="55" />
				</div>
				<div style=color:red>
					<form:input path="password" title="password"/>
				</div>
				<div>
					<input type="submit" value="Sign in" id="submit" > 
					<input type="reset" value="Cancel" >
					<div>
						<a href="${pageContext.request.contextPath}/user/register" id="register">Register</a><a
							href="${pageContext.request.contextPath}/user/forgot">Forgot password?</a>
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
