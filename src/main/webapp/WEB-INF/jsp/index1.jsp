<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Intranet</title>	
	</head>
	<body>		
		<c:forEach items="${etudiant}" var ="etudiant">
			
			${etudiant.nom}<br/>
			${etudiant.prenom}<br/>
			${etudiant.email}<br/>
			${etudiant.password}<br/>
			
		</c:forEach>
		
		"bdd de merde!!!!!!!!!!!!!!!!!"
	</body>
</html>