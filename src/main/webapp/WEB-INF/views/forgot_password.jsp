<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script
 src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"
 type="text/javascript"></script>

<script
 src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.js"
 type="text/javascript"></script>



<script type="text/javascript">
$(document).ready(function() {
	$('#submit').click(function() {
		
	
	$('#form').validate({ 
		
		rules: {        	        		
		
			email: { 
				required:true,
				email: true,
				
				},
			
					 
    	}, 
    	errorClass:"errorClass",                              
	    messages: {
	    	
    		email: {required:"<br/>Enter userName",
				email :  "<br/> Enter valid Mail ID"},
    		
    		
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
<form:form id="form" action="${pageContext.request.contextPath}/user/register" method="post" commandName="userDto">


           	 <legend>Register Form</legend>
            
               
                <div>
               Please Enter Your EmailId:  <form:input path="email" title="Enter Email"/>
                  
                </div>
				
                <input value="Send" name="submit" id="submit" type="submit"><input value="Cancel"  type="reset">
<!--                 <div><a href="#" id="signIn">Sign in</a><a href="#">Forgot password?</a> 
				</div>
           -->
        </form:form>
		</body>
		</html>