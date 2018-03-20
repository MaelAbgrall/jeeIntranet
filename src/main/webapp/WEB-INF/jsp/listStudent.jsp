<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<h2>Liste des �tudiants</h2>
			<table class="table table-hover">
	 		   <thead>
	 		     <tr>
	   			     <th>Pr�nom</th>
	   			     <th>Nom</th>
	   		 	    <th>Email</th>
	   			     <th>Editer / Supprimer</th>
	  		    </tr>
	 	   </thead>
	    <tbody>
	    <c:forEach items="${etudiant}" var ="etudiant">
	      <tr>
	        <td>${etudiant.prenom}</td>
	        <td>${etudiant.nom}</td>
	        <td>${etudiant.email}</td>
	        <td>${etudiant.idEtudiant}
	          <button type="button" class="btn btn-info">Editer</button>
	          <button type="button" class="btn btn-danger">Supprimer</button>
	        </td>
	      </tr>
	      </c:forEach>
	      
	      
	    </tbody>
	  </table>
		</div>
</body>
</html>