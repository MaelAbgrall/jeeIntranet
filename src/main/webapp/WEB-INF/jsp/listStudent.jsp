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
			<h2>Liste des étudiants</h2>
			
			
			
			<c:forEach items="${etudiant}" var ="etudiant">
			
			${etudiant.nom}<br/>
			${etudiant.prenom}<br/>
			${etudiant.email}<br/>
			${etudiant.password}<br/>
			
		</c:forEach>
		
		
		
  <table class="table table-hover">
	    <thead>
	      <tr>
	        <th>Prénom</th>
	        <th>Nom</th>
	        <th>Email</th>
	        <th>Classe</th>
	        <th>Editer / Supprimer</th>
	      </tr>
	    </thead>
	    <tbody>
	    
	    
	    
	      <tr>
	        <td>John</td>
	        <td>Doe</td>
	        <td>john@example.com</td>
	        <td>3CI</td>
	        <td>
	          <button type="button" class="btn btn-info">Editer</button>
	          <button type="button" class="btn btn-danger">Supprimer</button>
	        </td>
	      </tr>
	      
	      
	    </tbody>
	  </table>
		</div>
</body>
</html>