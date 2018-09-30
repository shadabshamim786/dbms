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
					
					 <script>
						window.categoryId='';
					</script> 
					
					
					
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a>&nbsp/&nbsp </li>
							<li class="active">All Stuffs</li>
						</ol>
					</c:if>
					
					
					
					<c:if test="${CategoryStuffs==true}">
					
					<script>
						window.categoryId='${category.categoryid}';
						
					</script>
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a>&nbsp/&nbsp</li>
							<li class="active">Category &nbsp/&nbsp</li>
							<li class="active">${category.name}</li>
						</ol>
					</c:if>
					
					
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-12">
					<table id="allporducttable" class="table table-striped table-bordered">
					
					
					<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Price (Rs.)</th>
							<th>Available Qty.</th>
							<th></th>
						</tr>
						
					</thead>
					
					</table>
				</div>
				
			</div>

		</div>

	</div>






</div>