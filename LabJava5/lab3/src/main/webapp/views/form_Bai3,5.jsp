<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bai 5</title>

<link rel="icon" type="image/x-icon" href="/images/iconFavion.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Bitter:400,700">
<link rel="stylesheet" href="/css/forHeader.css">
<link rel="stylesheet" href="/css/buttonUpload.css">
<link rel="stylesheet" href="/css/boostrap4.1.3.css">
<style>
.form {
	border: 1px solid rgb(209, 209, 209);
	background-color: white;
}
</style>
</head>
<body ng-app="myapp">
	<script>
		if ("${message}" != "") {
			alert("${message}");
		}
	</script>
	<div class="header-dark">
		<%--Header --%>
		<jsp:include page="/views/header.jsp"></jsp:include>
		<div class="container hero">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<form:form action="/student/save5" modelAttribute="sv"
						class="m-auto rounded p-5 form" enctype="multipart/form-data">
						<h4 class="h4 mt-3 font-weight-bold">
							Detail your information <i
								class="fa fa-assistive-listening-systems" aria-hidden="true"></i>
						</h4>
						<hr>
						<div class="avatar-upload">
							<div class="avatar-edit">
								<input type='file' name="images" id="imageUpload"
									accept=".png, .jpg, .jpeg" /> <label for="imageUpload"></label>
							</div>
							<div class="avatar-preview" style="box-shadow: ${errorImage}">
								<div id="imagePreview"
									style="background-image: url(images/${url1});"></div>
							</div>
						</div>
						<div class="form-group">
							<form:label class="form-group" path="name">Your name:</form:label>
							<form:input path="name" class="form-control" />
							<form:errors path="name" class="badge badge-danger" />
							<br>
						</div>
						<div class="form-group">
							<form:label class="form-group" path="email">Your email:</form:label>
							<form:input path="email" class="form-control" />
							<form:errors path="email" class="badge badge-danger" />
							<br>
						</div>
						<div class="form-group">
							<form:label class="form-group" path="email">Your mark:</form:label>
							<form:input path="marks" type="number" class="form-control" />
							<form:errors path="marks" class="badge badge-danger" />
							<br>
						</div>
						<div class="form-group">
							<form:label path="gender" class="form-group mr-4">Your sex:</form:label>
							<form:radiobuttons items="${genders}" path="gender"
								class="ml-5 mr-2 " />
							<form:errors path="gender" class="badge badge-danger" />
						</div>

						<div class="form-group">
							<form:label path="hobbies">Your hobby:</form:label>
							<form:checkboxes items="${hobbies}" path="hobbies"
								class="ml-5 mr-2 " />
							<br>
							<form:errors path="hobbies" class="badge badge-danger" />
						</div>

						<div class="form-group">
							<form:label for="" path="faculty">Your Faculty:</form:label>
							<form:select path="faculty" items="${faculties}"
								class="form-control" />
							<form:errors path="faculty" class="badge badge-danger" />
						</div>
						<button class="btn btn-danger">Save</button>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModalLong" ng-show="${sv_regis}">View
							your information</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalLong" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog w-50" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">
						<i class="fa fa-info-circle" aria-hidden="true"></i> Your
						Information
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="m-auto p-3">
						<div class="row">
							<div class="col-5 m-auto">
								<img src="/upload/${sv_regis.image}" width="200" height="200"
									class="rounded-circle"
									style="box-shadow: 0 0 15px rgb(88, 88, 88);" alt="">
								<h4 class="ml-4 font-weight-bold mt-3">${sv_regis.name}</h4>
							</div>
							<div class="col-7">
								<form>
									<div class="form-group">
										<label for="" class="row">Email address:
											<h6 class="font-weight-bold ml-4">${sv_regis.email}</h6>
										</label> <small id="emailHelp" class="form-text text-muted">Your
											email looks great.</small>
									</div>
									<div class="form-group">
										<label for="" class="row">Your mark:
											<h6 class="font-weight-bold ml-4">${sv_regis.marks}</h6>
										</label>
									</div>
									<div class="form-group">
										<label for="" class="row">Your sex:
											<h6 class="font-weight-bold ml-4" ng-show="${sv_regis.gender}==true">Nam</h6>
											<h6 class="font-weight-bold ml-4" ng-show="${sv_regis.gender}==false">Nữ</h6>
										</label>
									</div>
									<div class="form-group">
										<label for="" class="row">Hobbies:							
											<h6 class="font-weight-bold ml-4">${sv_regis.hobbies}</h6>
										</label>
									</div>
									<div class="form-group">
										<label for="" class="row">Faculity:
											<h6 class="font-weight-bold ml-4">${sv_regis.faculty}</h6>
										</label>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">
						Close <i class="fa fa-times-circle" aria-hidden="true"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<%--Finish Modal form --%>
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