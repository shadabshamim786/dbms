
<h1 class="my-4">Shop Name</h1>
<div class="list-group">


	<c:forEach items="${categories }" var="category">
	<a href="${contextRoot}/category/${category.categoryid}/stuffs" class="list-group-item">${category.name }</a>
	 </c:forEach> 
</div>