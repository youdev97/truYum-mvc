<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>truYum</title>
<link rel="icon" type="image/ico"
	href="/resources/images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="/resources/style/style.css" />
</head>
<body>
	<header>
		<span class="header-title">truYum</span> <img class="header-logo"
			src="/resources/images/truyum-logo-light.png" alt="truYum Logo"></img>
		<nav>
			<a class="nav-link" href="/show-menu-list-customer">Menu</a> <a
				class="nav-link" href="/show-cart?userId=1">Cart</a>
		</nav>
	</header>
	<article>
		<h2 class="article-heading">Menu Items</h2>
		<c:if test="${addCartStatus}">
			<p class="article-notification">Item added to Cart Successfully</p>
		</c:if>
		<table>
			<tr>
				<th class="col-left">Name</th>
				<th>Free Delivery</th>
				<th class="col-right">Price</th>
				<th>Category</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${menuItemList}" var="menuItem">
				<tr>
					<td class="col-left">${menuItem.name}</td>
					<td>${menuItem.freeDelivery ? 'Yes': 'No'}</td>
					<td class="col-right">${menuItem.price} &euro;</td>
					<td>${menuItem.category}</td>
					<td><a class="action-link"
						href="/add-to-cart?menuItemId=${menuItem.id}">Add to Cart</a></td>
				</tr>
			</c:forEach>
		</table>
	</article>
	<jsp:include page="footer.jsp"/>
</body>
</html>