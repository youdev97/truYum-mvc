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
				<a class="nav-link" href="/show-menu-list-admin">Menu</a>
			</nav>
		</header>
		<article>
			<h2 class="article-heading">${headline}</h2>
			<p class="article-notification col-left">${msg}</p>
		</article>
		<jsp:include page="footer.jsp"/>
	</body>
</html>