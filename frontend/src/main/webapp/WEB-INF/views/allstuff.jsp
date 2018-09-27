<div class="container">

	<div class="row">

		<div class="col-md-3">

			<%@include file="./shared/sidebar.jsp"%>

		</div>

		<!-- All stuff -->
		<div class="col-md-9">

			<div class="row">

				<div class="col-md-12">


					<c:if test="${AllStuffs==true}">
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a>&nbsp/&nbsp </li>
							<li class="active">All Stuffs</li>
						</ol>
					</c:if>
					
					
					
					<c:if test="${CategoryStuffs==true}">
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a>&nbsp/&nbsp</li>
							<li class="active">Category &nbsp/&nbsp</li>
							<li class="active">${category.name}</li>
						</ol>
					</c:if>
					
					
				</div>
			</div>


		</div>

	</div>






</div>