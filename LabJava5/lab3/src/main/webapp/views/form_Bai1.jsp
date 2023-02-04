<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORM BAI 1</title>
    <link rel="icon" type="image/x-icon" href="/images/iconFavion.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Bitter:400,700">
<link rel="stylesheet" href="/css/forHeader.css">
<style>
.form {
	border: 1px solid rgb(209, 209, 209);
	background-color: white;
}
</style>
</head>
<body>
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
					<form:form action="/student/save2" modelAttribute="student"
						class="m-auto rounded p-5 form">
						<h4 class="h4 mt-3 font-weight-bold">
							Detail your information <i
								class="fa fa-assistive-listening-systems" aria-hidden="true"></i>
						</h4>
						<hr>
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
						</div>
						<form:errors path="faculty" class="badge badge-danger" />
						<button class="btn btn-danger">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>