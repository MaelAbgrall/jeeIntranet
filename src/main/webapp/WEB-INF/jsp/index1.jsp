<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Intranet</title>	
	</head>
	<body>		
		<c:forEach items="${note}" var ="note">
			
			
			${note.numero}<br/>
			
			
		</c:forEach>
		
		"bdd de merde!!!!!!!!!!!!!!!!!"
	</body>
</html>