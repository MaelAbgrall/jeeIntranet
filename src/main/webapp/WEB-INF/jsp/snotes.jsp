<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>intranet ESME - Notes</title>
	<%@include file="header.jsp" %>
	<style>
	  .valid{
	    background-color: #86e939;
	  }
	  .valid:hover{
	  background-color:  #a1e869 !important;
	  }
	  .refused{
	    background-color:   #f23a19 ;
	  }
	 
	  .refused:hover{
	    background-color:  #e87c69 !important;
	  }
  </style>
</head>
<body>
	<%@include file="navbarStudent.jsp" %>
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
		    
		      <c:forEach items="${note}" var ="note">
		      	
		      	<c:if test="${note.numero < 10}">
			      <tr class="refused">
			        <td>${note.cours}</td>
			        <td>${note.numero}/20</td>
			      </tr>
			    </c:if>
			    
			    <c:if test="${note.numero >= 10}">
			      <tr class="valid">
			        <td>${note.cours}</td>
			        <td>${note.numero}/20</td>
			      </tr>
			    </c:if>
			    
			    
		      
		      </c:forEach>
		      
		      
		    </tbody>
		   </div>
		  </table>
		</div>
</body>
</html>