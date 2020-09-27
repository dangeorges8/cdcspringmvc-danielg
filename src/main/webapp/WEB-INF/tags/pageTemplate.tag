<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="bodyClass" required="false"%>
<%@ attribute name="titulo" required="true"%>
<%@ attribute name="extraScripts" fragment="true" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<title>${titulo}- Casado Código</title>
<c:url value="/" var="contextPath" /> 

<link href="/casadocodigo/resources/css/fonts.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/casadocodigo/resources/css/fontello-ie7.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/fontello-embedded.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/fontello.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/casadocodigo/resources/css/layout-colors.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/responsive-style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/guia-do-programador-style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/produtos.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="canonical" href="http://www.casadocodigo.com.br/" />
<link rel="icon"
	href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979"
	type="image/ico" />
<link href="https://plus.googlecom/108540024862647200608"
	rel="publisher" />
<link href="/casadocodigo/resources/css/cssbase-min.css"
	rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet' />
<link href="/casadocodigo/resources/css/fonts.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/casadocodigo/resources/css/fontello-ie7.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/fontello-embedded.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/fontello.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/casadocodigo/resources/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="/casadocodigo/resources/css/layout-colors.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/responsive-style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/guia-do-programador-style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/casadocodigo/resources/css/produtos.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="canonical" href="http://www.casadocodigo.com.br/" />
<link href="/casadocodigo/resources/css/book-collection.css"
	rel="stylesheet" type="text/css" media="all" />
</head>

<body class="${bodyClass }">


	<%@include file="/WEB-INF/views/cabecalho.jsp"%>

	<jsp:doBody />
	
	<jsp:invoke fragment="extraScripts"></jsp:invoke>

	<%@include file="/WEB-INF/views/rodape.jsp"%>
	

</body>
</html>