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
  </style>
</head>
<body>
	<%@include file="navbarStudent.jsp" %>
		<div class="container">
		
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
</body>
</html>