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
<link rel="stylesheet" href="/view/css/shopee.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
	.tn {
    color: #650000;
    position: relative;
    bottom: 13px;
    right: 14px;
    background-color: #39c8c2ba;
}
</style>
</head>
<body>
	<div class="wrapper">

		<div class="container">

			<div class="row g-1">
				<c:forEach var="item" items="${item}">

					<div class="col-md-3">

						<div class="card p-3" style="height: 392px;">

							<div class="text-center" style="height: 202px;">

								<img src="/views/img/${item.img}" width="200">

							</div>

							<div class="product-details">


								<span class="font-weight-bold d-block">$ ${item.price}</span> <span>${item.name}</span>


								<div class="buttons d-flex flex-row">

									<a href="/cart/add/${item.id}"
										class="btn btn-success cart-button btn-block"> Add to cart
									</a>
								</div>

								<div class="weight">

									<small>1 piece 2.5kg</small>

								</div>

							</div>



						</div>


					</div>


				</c:forEach>

				<a href="/cart/views" style="text-decoration: none; margin-top: 51px;text-align: center; color: orangered;"> 
					<div class="gio">
						 <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cart3"
			              viewBox="0 0 16 16">
			              <path
			                d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
			            </svg>
						<span class="badge tn">${Count}</span>
						<div style="margin-top: 8px;">Giỏ Hàng</div>
					</div>
				</a>

			</div>

		</div>


	</div>
	<script>
	document.addEventListener("DOMContentLoaded", function(event) {


		const cartButtons = document.querySelectorAll('.cart-button');

		cartButtons.forEach(button => {

		button.addEventListener('click',cartClick);

		});

		function cartClick(){
		let button =this;
		button.classList.add('clicked');
		}



		});
	</script>
</body>
</html>