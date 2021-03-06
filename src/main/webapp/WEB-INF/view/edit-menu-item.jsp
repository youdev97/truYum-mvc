<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
<title>truYum</title>
<link rel="icon" type="image/ico"
	href="/resources/images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="/resources/style/style.css">
<script src="/resources/js/script.js"></script>
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
		<h2 class="article-heading">Edit Menu Item</h2>
		<sf:form name="editMenuItemForm" action="edit-menu-item" modelAttribute="menuItemBean" method="POST">
			<sf:input path="id" type="number" style="display:none"/>
			<table class="form-table">
				<tr>
					<td colspan="4">
						<label class="form-item" for="field-title">Title</label>
						<sf:input path="name" class="form-input" type="text" name="title"
							id="field-title"/>
						<sf:errors path="name" />
					</td>
				</tr>
				<tr>
					<td>
						<label class="form-item" for="field-price">Price (&euro;)</label> 
						<sf:input path="price" class="form-input form-input-right"
							type="number" name="price" id="field-price" step="any" required="true"/>
						<sf:errors path="price" />
					</td>
					<th>
						<label class="form-item" for="field-yes">Active</label><br>
						
						<sf:radiobutton name="active" id="field-yes" path="active" value="Yes"/>
						<label class="form-item" for="field-yes">Yes</label>
						
						<sf:radiobutton name="active" id="field-no" path="active" value="No" />
						<label class="form-item" for="field-no">No</label>
					</th>
					<td>
						<label class="form-item" for="field-dateOfLaunch">Date of Launch</label>
						<sf:input class="form-input" type="text"
							name="dateOfLaunch" id="field-dateOfLaunch" path="dateOfLaunch"
							placeholder="dd-MM-yyyy"/>
						<sf:errors path="dateOfLaunch" />
					</td>
					<td>
						<label class="form-item" for="field-category">Category</label>
						<sf:select path="category" class="form-input" name="category" id="field-category">
							<sf:option value="Starters">Starters</sf:option>
							<sf:option value="Main Course">Main Course</sf:option>
							<sf:option value="Dessert">Dessert</sf:option>
							<sf:option value="Sides">Sides</sf:option>
							<sf:option value="Drinks">Drinks</sf:option>
						</sf:select>
					</td>
				</tr>
				<tr colspan=4>
					<td>
						<sf:checkbox path="freeDelivery" name="freeDelivery" id="field-freeDelivery"/>
						<label class="form-item" for="field-freeDelivery">
							<span class="form-checkbox">Free Delivery</span>
						</label>
					</td>
				</tr>
				<tr colspan=4>
					<td><input class="form-button" type="submit" name="submit"
						value="Save"></input></td>
				</tr>
			</table>
		</sf:form>
	</article>
	<jsp:include page="footer.jsp"/>
</body>
</html>