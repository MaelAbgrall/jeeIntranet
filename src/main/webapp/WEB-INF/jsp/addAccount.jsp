<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>intranet ESME - Comptes</title>
	<%@include file="header.jsp" %>
</head>
<body>
	<%@include file="navbarAdmin.jsp" %>
		<div class="container">
		
			<form action="/action_page.php" method="post">
    			<div class="row">
    				<div class="card col-md-6">
      					<div class="card-header bg-info">Prénom:</div>
						    <div class="card-body">
        						<div class="form-group">
          							<input type="text" class="form-control" id="name">
        						</div>
      						</div>
    					</div>
    
    					<div class="card col-md-6">
      						<div class="card-header bg-info">Nom:</div>
      							<div class="card-body">
        							<div class="form-group">
          								<input type="text" class="form-control" id="lastname">      
        							</div>
      							</div>
    						</div>
    
    					<div class="card col-md-3">
      						<div class="card-header bg-info">Civilité:</div>
      							<div class="card-body">
        							<div class="radio">
          								<label><input type="radio" name="gender">M.</label>
        							</div>
        							<div class="radio">
          								<label><input type="radio" name="gender">Mme.</label>
        							</div>
      							</div>
    						</div>
    
    					<div class="card col-md-6">
      						<div class="card-header bg-info">Email:</div>
      							<div class="card-body">
        							<div class="form-group">
          								<input type="email" class="form-control" id="email">
        							</div>
      							</div>
    						</div>


    					<div class="card col-md-3">
      						<div class="card-header bg-info">Profil</div>
      							<div class="card-body">
        							<div class="radio">
          								<label><input type="radio" name="gender">Etudiant</label>
        							</div>
        							<div class="radio">
          								<label><input type="radio" name="gender">Enseignant</label>
        							</div>
        							<div class="radio">
          								<label><input type="radio" name="gender">Admin</label>
        							</div>  
      							</div>
    						</div>
    
    					<div class="card col-md-12">
      						<div class="card-header bg-info">Classe (si étudiant)</div>
      						<div class="card-body">
        						<select class="form-control">
          							<option value="3CB">3CB</option>
          							<option value="3CT">3CT</option>
          							<option value="3CI">3CI</option>
        						</select>
      						</div>
    					</div>
    
    					<button type="submit" class="btn btn-success btn-block">Valider</button>
    				</div>
 				</form>
		</div>
</body>
</html>