<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/views/css/cart.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<div class="card">
		<div class="row">
			<div class="col-md-8 cart">
				<div class="title">
					<div class="row">
						<div class="col">
							<h4>
								<b>Shopping Cart</b>
							</h4>
						</div>
						<div class="col align-self-center text-right text-muted">${Count} items</div>
					</div>
				</div>

				<c:forEach var="items" items="${cart.items}">
					<form action="">
						<input type="hidden" name="id" value="${items.id}">
						<div class="row border-top border-bottom">
							<div class="row main align-items-center">
								<div class="col-2">
									<img class="img-fluid" src="/views/img/${items.img}">
								</div>
								<div class="col">
									<div class="row text-muted">ID: ${items.id}</div>
									<div class="row">${items.name} &euro; ${items.price}</div>
								</div>
								<div class="col">
									<a href="/cart/update/${items.id}/dis">-</a><a href="#" class="border" name="qty">${items.qty}</a>
									<a href="/cart/update/${items.id}/plus">+</a>
								</div>
								<div class="col">
									&euro; ${items.price *items.qty} <a href="/cart/remove/${items.id}"><span
										class="close">&#10005;</span></a>
								</div>
							</div>
						</div>
						
					</form>
				</c:forEach>





				<div class="back-to-shop">
					<a href="/item/index">&leftarrow;<span class="text-muted">Back
							to shop</span></a> <a href="/cart/clear" style="color: #606060;"> Clear Cart </a>
				</div>

			</div>
			<div class="col-md-4 summary">
				<div>
					<h5>
						<b>Summary</b>
					</h5>
				</div>
				<div class="row">
					<div class="col" style="padding-left: 14;"> ITEMS ${Count}</div>
					<div class="col text-right">&euro; ${Amount}</div>
				</div>
				<form>
					<p>SHIPPING</p>
					<select><option class="text-muted">Standard-Delivery-
							&euro;5.00</option></select>
					<p>GIVE CODE</p>
					<input id="code" placeholder="Enter your code">
				</form>
				<div class="row"
					style="border-top: 1px solid rgba(0, 0, 0, .1); padding: 2vh 0;">
					<div class="col">TOTAL PRICE</div>
					<div class="col text-right">&euro; ${Amount+5}</div>
				</div>
				<button class="btn">CHECKOUT</button>
			</div>
		</div>

	</div>

</body>
</html>