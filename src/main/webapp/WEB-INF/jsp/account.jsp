<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>intranet ESME - Comptes</title>
	<%@include file="header.jsp" %>
</head>
<body>
	<%@include file="navbarAdmin.jsp" %>
		<div class="container">
		<br>
			<div class="row">
				<div class="btn-group col-md-12">
	      			<a href="${pageContext.request.contextPath}/addAccount"><button type="button" class="btn btn-success">Ajouter un compte</button></a>
	   	  			<a href="${pageContext.request.contextPath}/alistAdmin"><button type="button" class="btn btn-primary">Comptes administrateur</button></a>
	  	  			<a href="${pageContext.request.contextPath}/alistStudent"><button type="button" class="btn btn-primary">Comptes étudiant</button></a>
	  	  			<a href="${pageContext.request.contextPath}/alistTeacher"><button type="button" class="btn btn-primary">Comptes enseignant</button></a>
	 			</div>
	 		</div>
		</div>
</body>
</html>