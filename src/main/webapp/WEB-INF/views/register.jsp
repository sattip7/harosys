<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="utf-8">
<title>Paper Stack</title>
<link rel="stylesheet" type="text/css" href="style.css" />


<body>
<div id="wrapper" >
<form method="post" action="">
            <fieldset>
                <legend>Register Form</legend>
                <div>
                    <input placeholder="First Name" name="first_name" required="" type="text">
                </div>
                <div>
                    <input placeholder="Last Name" name="last_name" required="" type="text">
                </div>
                <div>
                    <input placeholder="Password" name="first_name" required="" type="password">
                </div>
                <div>
                    <input placeholder="Email" name="email" required="" type="text">
                </div>
				 <div>
                    <input placeholder="Phone no" name="phone_no" required="" type="text">
                </div>
				 <div>
                    <input placeholder="Date Of Birth" name="dob" required="" type="text">
                </div>
				
                <div>
                    <div class="small">this textarea is just for test so you can see the placeholder working on textarea as well</div>
                    <textarea placeholder="Address" name="address"></textarea>
                </div>    
                <input value="Sign up" name="submit" type="submit"><input value="Cancel" name="submit" type="reset">
                <div><a href="#" id="signIn">Sign in</a><a href="#">Forgot password?</a>
				</div>
            </fieldset>    
        </form>
		</body>
		</html>