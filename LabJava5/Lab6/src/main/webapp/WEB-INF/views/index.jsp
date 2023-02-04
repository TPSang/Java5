<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Home</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS v5.0.2 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="https://code.angularjs.org/1.8.0/angular-route.min.js"></script>
</head>

<body class="bg-dark" ng-app="myApp">
	<div class="container m-auto">
		<nav class="navbar navbar-expand-lg navbar-dark bg-secondary h5">
			<div class="container-fluid">
				<a class="navbar-brand" href="/">Home</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Lab 5 </a>
							<ul class="dropdown-menu bg-secondary" aria-labelledby="navbarDropdown">
								<li class="nav-item"><a class="nav-link"
									href="/category/index">Category Managenment</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/product/sort">Sort Product</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/product/page">Pagination</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link"
							href="/product/search">Search Price</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/product/search-and-page">Search & Page</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/report/inventory-by-category">Inventory by Category</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/product/search1">Search Price (DSL)</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/product/search-and-page1">Search & Page (DSL)</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="text-center row">
			<ul class="list-group col-5 m-auto mt-3 h2">
				<li class="list-group-item list-group-item-info">Java 5</li>
				<li class="list-group-item list-group-item-primary">Tên GV: Lê
					Anh Tú</li>
				<li class="list-group-item list-group-item-secondary">Tên HS:
					Huỳnh Tấn Phát</li>
				<li class="list-group-item list-group-item-success">MSSV:
					PS15403</li>
				<li class="list-group-item list-group-item-danger">Lớp: IT16302</li>
				<li class="list-group-item list-group-item-warning">LAB 6</li>
			</ul>
		</div>
	</div>

	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>