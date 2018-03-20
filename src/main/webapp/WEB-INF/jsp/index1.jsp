<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Intranet</title>	
	</head>
	<body>		
		<c:forEach items="${horaire}" var ="horaire">
			
			${horaire.jour}<br/>
			${horaire.heure}<br/>
			
		</c:forEach>
		
		"bdd de merde!!!!!!!!!!!!!!!!!"
	</body>
</html>