<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css">
<title>Livros de Java, Android, Javascript, PHP, Ruby e muito
	mais - Casa do Código</title>

<style type="text/css">
body {
	padding-bottom: 60px;
}
</style>

</head>
<body>

	<div class="container">

		<h1>Login da Casa do Código</h1>

		<form:form servletRelativeAction="/login" method="post">
			<div class="form-group">
				<label><strong>E-mail</strong></label> <input name="username"
					type="text" class="form-control" />
			</div>
			<div class="form-group">
				<label><strong>Senha</strong></label> <input type="password"
					name="password" class="form-control" />
				<form:errors path="descricao" />
			</div>
			<button type="submit" class="btn btn-primary">
				<strong>Logar</strong>
			</button>
		</form:form>
	</div>

</body>
</html>