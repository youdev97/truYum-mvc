<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>truYum</title>
		<link rel="icon" type="image/ico" href="/resources/images/truyum-logo-dark.png" />
		<link rel="stylesheet" type="text/css" href="/resources/style/style.css">
	</head>
	<body>
		<header>
			<span class="header-title">truYum</span>
			<img class="header-logo" src="/resources/images/truyum-logo-light.png" alt="truYum Logo"></img>
			<nav>
				<a class="nav-link" href="/show-menu-list-customer">Menu</a>
				<a class="nav-link" href="/show-cart?userId=1">Cart</a>
			</nav>
		</header>
		<article>
			<h2 class="article-heading">Cart</h2>
			<c:if test="${removeCartItemStatus}">
				<p class="article-notification article-notification-left">Item removed from Cart Successfully</p>
			</c:if>
			<table  class="table-margin">
				<tr>
					<th class="col-left">Name</th>
					<th class="col-left">Free Delivery</th>
					<th class="col-right">Price</th>
					<th></th>
				</tr>
				<c:forEach items="${cart.menuItems}" var="menuItem">
					<tr>
					<td class="col-left">${menuItem.name}</td>
					<td class="col-left">${menuItem.freeDelivery ? 'Yes': 'No'}</td>
					<td class="col-right">${menuItem.price} &euro;</td>
					<td>
						<a class="action-link" href="/remove-cart?menuItemId=${menuItem.id}&&userId=1">Delete</a>
					</td>
					</tr>
				</c:forEach>
				<tr>
					<th></th>
					<th class="col-left">Total</th>
					<th class="col-right">${cart.total} &euro;</th>
					<th></th>
				</tr>
			</table>
		</article>
		<jsp:include page="footer.jsp"/>
	</body>
</html>