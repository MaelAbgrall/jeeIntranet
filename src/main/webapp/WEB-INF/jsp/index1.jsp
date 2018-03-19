<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Intranet</title>	
	</head>
	<body>		
		<c:forEach items="${enseignant}" var ="enseignant">
			
			${enseignant.nom}<br/>
			${enseignant.prenom}<br/>
			${enseignant.email}<br/>
			${enseignant.password}<br/>
			
		</c:forEach>
		
			<c:forEach items="${administrateur}" var ="administrateur">
			
			${administrateur.nom}<br/>
			${administrateur.prenom}<br/>
			${administrateur.email}<br/>
			${administrateur.password}<br/>
			
		</c:forEach>
		"bdd de merde!!!!!!!!!!!!!!!!!"
	</body>
</html>