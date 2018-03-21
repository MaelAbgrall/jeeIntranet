<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Intranet ESME - News</title>	
		<%@include file="header.jsp" %>
	</head>
	<body>
	<%@include file="navbarTeacher.jsp" %>
		<div class="container">
			<table class="table table-hover">
    			<tbody>
    			
					<c:forEach items="${news}" var ="news">
						<tr>
       						<td>
       							<div class="row">
          							<div class="col-md-3">
             							<img src="${news.linkImage}" alt="${news.linkImage}" height="100">
         							</div>
          							<div class="col-md-9">
            							<h4>${news.description}</h4>
            							<p>${news.dateExpiration}</p>
            							<p>${news.texte}</p>
          							</div>
        						</div>
      						</td>
      					</tr>			
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>