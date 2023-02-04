<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<head>
<title>Lab 5 Pagination</title>
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
		<div class="container bg-light pb-1">
			<h3>PAGINATION</h3>
			<table border="1" style="width: 100%"
				class="table table-striped table-hover table-bordered mb-2">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Date</th>
				</tr>
				<c:forEach var="item" items="${page.content}">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td>${item.price}</td>
						<td>${item.createDate}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="text-center mb-2">
				<a class="btn btn-outline-primary" href="/product/page?p=0">First</a>
				<a class="btn btn-outline-primary"
					href="/product/page?p=${page.number-1}">Previous</a> <a
					class="btn btn-outline-primary"
					href="/product/page?p=${page.number+1}">Next</a> <a
					class="btn btn-outline-primary"
					href="/product/page?p=${page.totalPages-1}">Last</a>
			</div>
			<ul class="list-group">
				<li class="list-group-item">Số thực thể hiện tại:
					${page.numberOfElements}</li>
				<li class="list-group-item">Trang số: ${page.number}</li>
				<li class="list-group-item">Kích thước trang: ${page.size}</li>
				<li class="list-group-item">Tổng số thực thể:
					${page.totalElements}</li>
				<li class="list-group-item">Tổng số trang: ${page.totalPages}</li>
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
<script>
	var app = angular.module("myApp", []);
</script>

</html>