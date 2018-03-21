<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
	<title>Intranet ESME - Home</title>	
	<%@include file="header.jsp" %>	
	<style>
		  /* Make the image fully responsive */
		  .carousel-inner img {
		      width: 100%;
		      height: 100%;
		  }
		
		  .carousel-caption{
		    text-shadow: 2px 2px 0px rgba(0,0,0,0.3);
		  }
		  .card-header{
		    color: white !important;
		    background-color: #e63d1a !important;
		    font-weight: bold !important;
		    text-shadow: 1px 1px 0px rgba(0,0,0,0.3) !important;
		  }
		</style>
</head>
<body>	
	<%@include file="navbarTeacher.jsp" %>
	<div class="container">
		<div id="demo" class="carousel slide" data-ride="carousel">
  			<div class="carousel-inner">
    			<c:forEach items="${news}" var ="news">
					<div class="carousel-item active">
      					<img src="${news.linkImage}" alt="${news.linkImage}" width="1100" height="500">
      					<div class="carousel-caption">
        				<h3>${news.description}</h3>
      				</div>   
    				</div>
				</c:forEach>
  			</div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
  			</a>
 			<a class="carousel-control-next" href="#demo" data-slide="next">
  				<span class="carousel-control-next-icon"></span>
  			</a>
		</div>
		<div class="card">
			<div class="card-header">Office 365</div>
			<div class="card-body">
	  			<button type="button" class="btn"><i class="fas fa-envelope"></i> mail</button>
		    	<button type="button" class="btn"><i class="fas fa-file-word"></i> word online</button>
	    		<button type="button" class="btn"><i class="fas fa-hdd"></i> onedrive</button>
	    		<button type="button" class="btn"><i class="fas fa-users"></i> team</button>
	  		</div>  
		</div>
	
		<br>
	
		<div class="card">
	  		<div class="card-header">Autres sites</div>
	  		<div class="card-body">
	    		<button type="button" class="btn"><i class="fas fa-users"></i> AIESME</button>
	    		<button type="button" class="btn"><i class="fas fa-graduation-cap"></i> Site de l'école</button>
	    		<a href="http://blogs.esme.fr/"><button type="button" class="btn"><i class="fas fa-cubes"></i> Blog de l'école</button></a>
	    		<button type="button" class="btn"><i class="fab fa-facebook-square"></i> Facebook BDE</button>
	    		<button type="button" class="btn"><i class="fas fa-cubes"></i> Associations</button>
	  		</div>  
		</div>
	
		<br>
	
		<div class="card">
	  		<div class="card-header">Liens utiles</div>
	  		<div class="card-body">
	    		<button type="button" class="btn"><i class="fas fa-calendar-check"></i> Dates importantes</button>
	    		<button type="button" class="btn"><i class="fas fa-home"></i> Logement</button>
	    		<button type="button" class="btn"><i class="fas fa-bullhorn"></i> Visites/Salons/JPO</button>
	    		<button type="button" class="btn"><i class="fas fa-comments"></i> Conférences</button>
	 		 </div>	  
		</div>
	</div>
</body>
</html>