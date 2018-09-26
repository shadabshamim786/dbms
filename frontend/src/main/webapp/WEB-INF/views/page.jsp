<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Kitchen And Stuff-${titler}</title>


<script>
	window.menu = '${title}';
</script>


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>




		<!-- Page Content -->

		<div clas="content">

			<c:if test="${HOME==true }">
				<%@include file="./shared/home.jsp"%>
			</c:if>

			<c:if test="${ABOUT==true }">
				<%@include file="./about.jsp"%>
			</c:if>

			<c:if test="${CONTACT==true }">
				<%@include file="./contact.jsp"%>
			</c:if>


		</div>


		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>




		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>


		<!-- My self tried JS -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
