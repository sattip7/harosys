<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="utf-8">
<title>Paper Stack</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
<script
 src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"
 type="text/javascript"></script>

<script
 src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.js"
 type="text/javascript"></script>



<script type="text/javascript">
$(document).ready(function() {
	$('#submit').click(function() {
		
	
	$('#register').validate({ 
		
		rules: {        	        		
			userName: "required",
			password: "required",
			firstName: "required",
			lastName: "required",
			dateOfBirth: "required",
			email: "required",
			phoneNo: "required",
					 
    	},  
	    errorElement: "span" ,                              
	    messages: {
	    	userName: " Enter userName",
	    	password: " Enter Password",
    		firstName: " Enter First Name",
    		lastName: " Enter lastName",
    		dateOfBirth: " Enter dateOfBirth",
    		email: " Enter email",
    		phoneNo: " Enter Phone no.",
    		
	    },
    	
    	submitHandler: function(form) {
            form.submit();
        }
	    
	});
	alert("validate caleed");
});
});
</script>
</head>
<body>
<div id="wrapper" >
<form:form id="register" action="${pageContext.request.contextPath}/user/register" method="post" commandName="userDto">


           	 <legend>Register Form</legend>
            
                <div>
               
                    <form:input path="userName" title="Enter First Name"/>
                </div>
                
                <div>
               
                    <form:input path="password" title="Enter First Name"/>
                </div>
                <div>
                <form:input path="firstName" title="Enter Last Name"/>
                    
                </div>
                <div>
                  <form:input path="lastName" title="Enter Password"/>
                    
                </div>
                <div>
                 <form:input path="dateOfBirth" title="Enter Email"/>
                  
                </div>
                <div>
                 <form:input path="email" title="Enter Email"/>
                  
                </div>
				 <div>
				 <form:input path="phoneNo" title="Enter Phone_no"/>
                   
                </div>
				 
                <div>
                    <textarea placeholder="Address" name="address"></textarea>
                </div>    
                <input value="Sign up" name="submit" id="submit" type="submit"><input value="Cancel"  type="reset">
                <div><a href="#" id="signIn">Sign in</a><a href="#">Forgot password?</a>
				</div>
           
        </form:form>
		</body>
		</html>