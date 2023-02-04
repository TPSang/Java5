<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Bitter:400,700">
	
<link rel="stylesheet" href="/view/css/he.css">
<link rel="stylesheet" href="/view/css/buttonUpload.css">
<link rel="stylesheet" href="/view/css/boostrap4.1.3.css">
<link rel="stylesheet" href="/view/css/style.css">
</head>
<body>
	<section class="ftco-section">
	<form action="/account/login" method="post" class="signin-form"
								enctype="multipart/form-data">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div
							class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
							
							<div class="text w-100">
							
								<h2>Welcome to login</h2>
								
								<div class="avatar-upload">
									<div class="avatar-edit">
										<input type='file' name="attach" id="imageUpload" accept=".png, .jpg, .jpeg" /> <label style="position: absolute; width: 200px;  height: 200px; left: -44px; top: -5px; opacity: 0;" for="imageUpload"></label>
									</div>
									<div class="avatar-preview" style="right: 125px;">
										<div id="imagePreview" style="background-image: url(images/${url1});"></div>
									</div>
								</div>

								<p>Don't have an account?</p>
								
								<a href="#" class="btn btn-white btn-outline-white">Sign Up</a>
								
							</div>
							
						</div>

						<div class="login-wrap p-4 p-lg-5">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4">Sign In</h3>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#"
											class="social-icon d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a> <a href="#"
											class="social-icon d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a>
									</p>
								</div>
							</div>
							
								<div class="form-group mb-3">
									<label class="label" for="name">Username</label> <input
										type="text" name="username" class="form-control"
										placeholder="Username" required>
								</div>
								<div class="form-group mb-3">
									<label class="label" for="password">Password</label> <input
										type="password" name="password" class="form-control"
										placeholder="Password" required>
								</div>
								<div class="form-group">
									<button type="submit"
										class="form-control btn btn-primary submit px-3">Sign
										In</button>
								</div>
								<div class="form-group d-md-flex">
									<div class="w-50 text-left">
										<label class="checkbox-wrap checkbox-primary mb-0">Remember
											Me <input name="remember" value="true" type="checkbox"
											checked> <span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="#">Forgot Password</a>
									</div>
								</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
	</section>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
	<!-- partial -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
	<script src="/js/buttonUpload.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script>
		var app = angular.module("myapp", []);
		app.controller("myctrl1", function($scope) {

		})
	</script>
</body>
</html>