<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>intranet ESME - Contact</title>
	<%@include file="header.jsp" %>
</head>
<body>
	<%@include file="navbarTeacher.jsp" %>
		<div class="container">
		
		
		<table class="table table-hover">
  <div class="row">
    <thead>
      <tr>
        <th class="col-md-8">Module</th>
        <th class="col-md-4">Note</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${etudiant}" var ="etudiant">      
      <tr>
        <td>${etudiant.prenom}, ${etudiant.nom}</td>
        <td>
        <input type="number" class="form-control" id="usr">/20</td>
      </tr>
      </c:forEach>
      
      
      
    </tbody>
   </div>
  </table>
		</div>
</body>
</html>