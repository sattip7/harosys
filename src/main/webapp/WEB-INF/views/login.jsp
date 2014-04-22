<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Paper Stack</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >
</head>
<body>
	<div class="container">
		<section id="content">
			<form action="">
				<h1>Sign In</h1>
				<div>
					<input type="text" name="username" placeholder="Username" required="" id="username" />
				</div>
				<div>
					<input type="password" placeholder="Password" required=""
						id="password" />
				</div>
				<div>
					<input type="submit" value="Sign in" name="submit"><input
						type="reset" value="Cancel" name="submit">
					<div>
						<a href="${pageContext.request.contextPath}/user/register" id="register">Register</a><a
							href="#">Forgot password?</a>
					</div>
				</div>
			</form>
			<!-- form -->

		</section>
		<!-- content -->
	</div>
	<!-- container -->


</body>
</html>