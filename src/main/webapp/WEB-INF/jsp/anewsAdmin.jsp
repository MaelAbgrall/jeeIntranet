<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>intranet ESME - Contact</title>
	<%@include file="header.jsp" %>
	<style>
    .card-header{
      color: white;
      background-color: #e63d1a;
    }
    .top-card{
      color: white;
      font-weight: bold;
      text-shadow: 1px 1px 0px rgba(0,0,0,0.3);
    }

    .top-card:hover{
      color: white;
    }
  </style>
</head>
<body>
	<%@include file="navbarAdmin.jsp" %>
		<div class="container">
		
			<h2>Administration des news</h2>
  <div id="accordion">
    <div class="card">
      <div class="card-header">
        <a class="card-link top-card" data-toggle="collapse" href="#collapseOne">
          <i class="fas fa-angle-down"></i> Edition/Creation des actualités
        </a>
      </div>
      
      <div id="collapseOne" class="collapse">
        <div class="card-body">
            <form action="/action_page.php" method="post">
              <div class="row">
              <div class="card col-md-6">
                <div class="card-header bg-secondary">lien image (DOIT ETRE AU FORMAT ..x..):</div>
                <div class="card-body">
                  <div class="form-group">
                    <input type="text" class="form-control" id="imagelink">
                  </div>
                </div>
              </div>
              
              <div class="card col-md-6">
                <div class="card-header bg-secondary">Titre:</div>
                <div class="card-body">
                  <div class="form-group">
                    <input type="text" class="form-control" id="title">      
                  </div>
                </div>
              </div>

              <div class="card col-md-6">
                <div class="card-header bg-secondary">Courte description:</div>
                <div class="card-body">
                    <div class="form-group">
                      <textarea class="form-control" rows="5" id="description"></textarea>
                    </div>
                </div>
              </div>


              <div class="card col-md-6">
                  <div class="card-header bg-secondary">Texte (optionnel):</div>
                  <div class="card-body">
                      <div class="form-group">
                        <textarea class="form-control" rows="5" id="texte"></textarea>
                      </div>
                  </div>
                </div>
          
          
              <div class="card col-md-12">
                <div class="card-header bg-secondary">Date d'expiration</div>
                <div class="card-body">
                    <input id="date" type="date">
                </div>
              </div>

              <div class="form-check col-md-2">
                  <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" value="">Active
                  </label>
              </div>
              
              <button type="submit" class="btn btn-info col-md-10">Valider</button>
            </div>
            </form>
        </div>
      </div>
    </div>
    
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link top-card" data-toggle="collapse" href="#collapseTwo">
          <i class="fas fa-angle-down"></i> Liste des actualités
      </a>
      </div>
      <div id="collapseTwo" class="collapse show">         
            <table class="table table-hover">
                <tbody>
                
                <c:forEach items="${news}" var ="news">
						<tr>
       						<td>
       							<div class="row">
          							<div class="col-md-3">
             							<img src="${news.linkImage}" alt="${news.linkImage}" height="100">
         							</div>
          							<div class="col-md-6">
            							<h4>${news.description}</h4>
            							<p>${news.dateExpiration}</p>
            							<p>${news.texte}</p>
            						</div>
            						<div class="col-md-3">${news.idNews}
                      					<button type="button" class="btn btn-info">Editer</button>
                      					<button type="button" class="btn btn-danger">Supprimer</button>
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