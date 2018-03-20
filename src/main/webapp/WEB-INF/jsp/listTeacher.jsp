<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>intranet ESME - Contact</title>
	<%@include file="header.jsp" %>
</head>
<body>
	<%@include file="navbarAdmin.jsp" %>
		<div class="container">
			<h2>Liste des enseignants</h2>
  <table class="table table-hover">
	    <thead>
	      <tr>
	        <th>Prénom</th>
	        <th>Nom</th>
	        <th>Email</th>
	        <th>Editer / Supprimer</th>
	      </tr>
	    </thead>
	    <tbody>    
	    
	    <c:forEach items="${enseignant}" var ="enseignant">
+			
+			<p>plop ${enseignant}</p>
+			
+		</c:forEach>
		<%--
		<c:forEach items="${enseignant}" var ="enseignant">
	      <tr>
	        <td>${enseignant.prenom}</td>
	        <td>${enseignant.nom}</td>
	        <td>${enseignant.email}</td>
	        <td>${enseignant.idEnseignant}
	          <button type="button" class="btn btn-info">Editer</button>
	          <button type="button" class="btn btn-danger">Supprimer</button>
	        </td>
	      </tr>
	     </c:forEach>--%>
	      
	      
	    </tbody>
	  </table>
		</div>
</body>
</html>