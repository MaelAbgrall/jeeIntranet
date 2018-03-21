<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Intranet</title>	
	</head>
	<body>		
		<c:forEach items="${administrateur}" var ="administrateur">
			
			${administrateur.nom}<br/>
			${administrateur.prenom}<br/>
			
		</c:forEach>
		
		"bdd de merde!!!!!!!!!!!!!!!!!"
	</body>
</html>