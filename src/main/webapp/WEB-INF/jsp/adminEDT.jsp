<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>intranet ESME - Contact</title>
	<%@include file="header.jsp" %>
	<style>
    .lundi{
      background-color: lightgrey;
    }
    .mercredi{
      background-color: lightgrey;
    }
    .vendredi{
      background-color: lightgrey;
    }
    .dimanche{
      background-color: slategrey;
    }
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
		
		<div class="card">
    <div class="card-header">
      <a class="card-link top-card" data-toggle="collapse" href="#collapseOne">
        <i class="fas fa-angle-down"></i> Ajout d'un cours
      </a>
    </div>
   
    <div class="card-body">
    <div id="collapseOne" class="collapse">
        <form action="/action_page.php" method="post">
          <div class="row">
            <div class="card col-md-6">
              <p>Enseignant:</p>
              <select class="form-control">
                <option value="PA">PA</option>
                <option value="PB">PB</option>
                <option value="PC">PC</option>
              </select>
            </div>
            
            <div class="card col-md-6">
              <p>Classe:</p>
              <select class="form-control">
                <option value="3CB">3CB</option>
                <option value="3CT">3CT</option>
                <option value="3CI">3CI</option>
              </select>
            </div>      
        
            <div class="card col-md-6">
              <p>Date:</p>
              <input id="date" type="date">
            </div>

            <div class="card col-md-6">
              <p>Heure:</p>
              <select class="form-control">
                <option value="H8">8h30</option>
                <option value="H10">10h30</option>
                <option value="H14">14h00</option>
                <option value="H14">16h00</option>
              </select>
            </div>
            
            <button type="submit" class="btn btn-info btn-block">Valider</button>
          </div>
    </div>
</div>

<br>
  <div class="card">
    <div class="card-header">
      <a class="card-link top-card" data-toggle="collapse" href="#collapseTwo">
        <i class="fas fa-angle-down"></i> Emploi du temps
      </a>
  </div>
  <div id="collapseTwo" class="collapse show">
    <div class="row">  
      <div class="btn-group btn-block col-md-6">
        <button type="button" class="btn btn-info">Précédente</button>
        <button type="button" class="btn btn-warning">Aujourd'hui</button>
        <button type="button" class="btn btn-info">Suivante</button>
      </div>
      <div class="col-md-6">
        <form action="/action_page.php" method="post">
          <div class="row">
            <div class="col-md-3">
              <select class="form-control">
                <option value="PA">PA</option>
                <option value="PB">PB</option>
                <option value="PC">PC</option>
              </select>
            </div>
            <button type="submit" class="btn btn-info btn-block col-md-3">Valider</button>
          </div>
        </form>
      </div>
    </div>

    <table class="table table-hover">
          <thead>
                <tr>
                  <th></th>
                  <th>Lundi</th>
                  <th>Mardi</th>
                  <th>Mercredi</th>
                  <th>Jeudi</th>
                  <th>Vendredi</th>
                  <th>Samedi</th>
                  <th>Dimanche</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">8h30</th>
                  <td class="lundi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'lundi'}">
							<c:if test="${horaire.heure == '8h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>
                  
                  <td class="mardi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'mardi'}">
							<c:if test="${horaire.heure == '8h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="mercredi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'mercredi'}">
							<c:if test="${horaire.heure == '8h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="jeudi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'jeudi'}">
							<c:if test="${horaire.heure == '8h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="vendredi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'vendredi'}">
							<c:if test="${horaire.heure == '8h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="samedi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'lundi'}">
							<c:if test="${horaire.heure == '8h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="dimanche">
                  </td>

                </tr>
                <tr>
                  <th scope="row">10h30</th>
                  <td class="lundi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'lundi'}">
							<c:if test="${horaire.heure == '10h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>
                  
                  <td class="mardi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'mardi'}">
							<c:if test="${horaire.heure == '10h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="mercredi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'mercredi'}">
							<c:if test="${horaire.heure == '10h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="jeudi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'jeudi'}">
							<c:if test="${horaire.heure == '10h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="vendredi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'vendredi'}">
							<c:if test="${horaire.heure == '10h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="samedi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'samedi'}">
							<c:if test="${horaire.heure == '10h30'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="dimanche">
                  </td>
                </tr>
                <tr>
                  <th scope="row">12h30</th>
                  <td class="lundi">
	                  
                  </td>
                  
                  <td class="mardi">
                  </td>

                  <td class="mercredi">
                  </td>

                  <td class="jeudi">
                  </td>

                  <td class="vendredi">
                  </td>

                  <td class="samedi">
                  </td>

                  <td class="dimanche">
                  </td>
                </tr>

                <tr>
                  <th scope="row">14h00</th>
                  <td class="lundi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'lundi'}">
							<c:if test="${horaire.heure == '14h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>
                  
                  <td class="mardi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'mardi'}">
							<c:if test="${horaire.heure == '14h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="mercredi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'mercredi'}">
							<c:if test="${horaire.heure == '14h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="jeudi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'jeudi'}">
							<c:if test="${horaire.heure == '14h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="vendredi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'vendredi'}">
							<c:if test="${horaire.heure == '14h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="samedi">
                      <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'samedi'}">
							<c:if test="${horaire.heure == '14h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                  </td>

                  <td class="dimanche">
                  </td>
                </tr>

                <tr>
                    <th scope="row">16h00</th>

                    <td class="lundi">
                        <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'lundi'}">
							<c:if test="${horaire.heure == '16h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                    </td>
                    
                    <td class="mardi">
                         <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'mardi'}">
							<c:if test="${horaire.heure == '16h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                    </td>
  
                    <td class="mercredi">
                         <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'mercredi'}">
							<c:if test="${horaire.heure == '16h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                    </td>
  
                    <td class="jeudi">
                         <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'jeudi'}">
							<c:if test="${horaire.heure == '16h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                    </td>
  
                    <td class="vendredi">
                         <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'vendredi'}">
							<c:if test="${horaire.heure == '16h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                    </td>
  
                    <td class="samedi">
                         <c:forEach items="${horaire}" var ="horaire">
						<c:if test="${horaire.jour == 'samedi'}">
							<c:if test="${horaire.heure == '16h00'}">
								<p>cours:</p>
								<p>${horaire.cours}</p>
							</c:if>
						</c:if>
				     </c:forEach>
                    </td>
  
                    <td class="dimanche">
                    </td>
  
                </tr>
              </tbody>
            </table>
  </div>
		</div>
</body>
</html>