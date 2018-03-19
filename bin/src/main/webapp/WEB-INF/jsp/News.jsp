<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Intranet</title>	
	</head>
	<body>		
		<c:forEach items="${news}" var ="news">
			 ${news.checkActif}<br/>
			${news.dateExpiration}<br/>
			${news.description}<br/>
			${news.linkImage}<br/>
			
		</c:forEach>
		"bdd de merde!!!!!!!!!!!!!!!!!"
	</body>
</html>