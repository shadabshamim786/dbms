

<!DOCTYPE html>
<html>
<body>

	<div class="container">
		<div class="row">

			<div class="col-md-3">
				<div class="thumbnail">
					<img style="max-width: 100%;"
						src="${images }/prod${product.id}.jpg" />
				</div>
			</div>
			<div class="col-md-9" style="padding-top: 20px">

				<h3>${product.name}</h3>
				<h5 style="color: #337ab7">${product.description}</h5>


				<h5 class="title-price">Brand : ${product.brand}</h5>
				<h4>
					Price: <strong> &#8377; ${product.price} /-</strong>
				</h4>


				<div class="section">
					<h6 style="margin-top: 15px;">COLOR :&nbsp ${product.color}</h6>
					<h6 style="margin-top: 15px;">MATERIAL :&nbsp
						${product.material}</h6>
					<h6 style="margin-top: 15px;">HEIGHT :&nbsp ${product.size}</h6>
					<h6 style="margin-top: 15px;">Code :&nbsp ${product.code}</h6>
				
				<c:choose>
					<c:when test="${product.quantity==0 }">
						<h5 style="color:red">Out Of Stock</h5>
					</c:when>
					<c:otherwise>
						<h6>Qty. Available: ${product.quantity}</h6>

					</c:otherwise>
					</c:choose>
				</div>


				<c:choose>
					<c:when test="${product.quantity==0 }">
						
					</c:when>
					<c:otherwise>
						<a href="${contextRoot}/cart/add/${product.id}/stuff"
					class="btn btn-success"> <span
					class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</a>

					</c:otherwise>
					</c:choose>


				

			</div>


		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>
