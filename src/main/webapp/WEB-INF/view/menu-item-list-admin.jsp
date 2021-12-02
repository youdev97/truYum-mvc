<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<a class="nav-link" href="/show-menu-list-admin">Menu</a>
		</nav>
	</header>
	<article>
		<h2 class="article-heading">Menu Items</h2>
		<table>
			<tr>
				<th class="col-left">Name</th>
				<th class="col-right">Price</th>
				<th>Active</th>
				<th>Date of Launch</th>
				<th>Category</th>
				<th>Free Delivery</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${menuItemList}" var="menuItem">
				<tr>
					<td class="col-left">${menuItem.name}</td>
					<td class="col-right">${menuItem.price} &euro;</td>
					<td>${menuItem.active ? 'Yes': 'No'}</td>
					<td><fmt:formatDate pattern="dd-MM-yyyy"
							value="${menuItem.dateOfLaunch}" /></td>
					<td>${menuItem.category}</td>
					<td>${menuItem.freeDelivery ? 'Yes': 'No'}</td>
					<td><a class="action-link"
						href="/show-edit-menu-item?menuItemId=${menuItem.id}">Edit</a>
						<a class="action-link"
						href="/delete-menu-item?menuItemId=${menuItem.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</article>
	<article>
		<a href="/add-menu-item"><input class="form-button" type="button" value="Add"/></a>
	</article>
	<jsp:include page="footer.jsp"/>
</body>
</html>