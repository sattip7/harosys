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
			userName: { 
				required:true,
				digits : false
				},
			password: { 
				required:true
				
				},
			firstName: { 
				required:true,
				digits : false
				},
			lastName:{ 
				required:true,
				digits : false
				},
			dateOfBirth: { 
				required:true,
				digits : false
				},
			email: { 
				required:true,
				email: true,
				
				},
			phoneNo: { 
				required:true,
				digits : true,
				minlength: 10
				
				}
					 
    	}, 
    	errorClass:"errorClass",                              
	    messages: {
	    	userName: {required:"<br/> Enter userName",
				digits :  "<br/> Enter alphabets"},
	    	password:  {required:"<br/>Enter userName"},
			
    		firstName: {required:"<br/>Enter FirstName",
				digits :  "<br/> Enter alphabets"},
    		lastName: {required:"<br/>Enter LastName",
				digits :  "<br/> Enter alphabets"},
    		dateOfBirth: {required:"<br/>Enter DateOfBirth",
				digits :  " <br/>Enter alphabets"},
    		email: {required:"<br/>Enter userName",
				digits :  "<br/> Enter alphabets"},
    		phoneNo: {required:"<br/>Enter userName",
				digits :  "<br/> Enter Digits",
				minlength:"<br/>Enter min 10"},
    		
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
<div id="wrapper" >
<form:form id="register" action="${pageContext.request.contextPath}/user/register" method="post" commandName="userDto">


           	 <legend>Register Form</legend>
            
                <div >
               
                    <form:input path="userName" title="Enter First Name"/>
                </div>
                
                <div >
               
                    <form:input path="password" title="Enter First Name"/>
                </div>
                <div style="color:red">
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
<!--                 <div><a href="#" id="signIn">Sign in</a><a href="#">Forgot password?</a> 
				</div>
           -->
        </form:form>
		</body>
		</html>