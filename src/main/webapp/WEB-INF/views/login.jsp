<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Paper Stack</title>
<link rel="stylesheet" type="text/css" href="style.css" />


</head>
<body>
<div class="container">
	<section id="content">
		<form action="">
			<h1>Sign In</h1>
			<div>
				<input type="text" placeholder="Username" required="" id="username" />
			</div>
			<div>
				<input type="password" placeholder="Password" required="" id="password" />
			</div>
			<div>
				<input type="submit" value="Sign in" name="submit"><input type="reset" value="Cancel" name="submit">
				<div ><a href="="${pageContext.request.contextPath}/register" id="register" >Register</a><a href="#">Forgot password?</a>
				</div>
			</div>
		</form><!-- form -->
		
	</section><!-- content -->
</div><!-- container -->


</body>
</html>