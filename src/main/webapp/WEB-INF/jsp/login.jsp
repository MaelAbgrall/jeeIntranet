<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>login</title>
	
</head>
<body>
	<form action="/postLogin" method="post">
	
		Email:<br>
  		<input type="email" name="email" required><br><br>
  		
  		Mot de passe:<br>
  		<input type="password" name="password" required><br><br>
  		
  		<select name="profil" form="profil">
	 		<option value="etudiant">Etudiant</option>
	 		<option value="enseignant">Enseignant</option>
	  		<option value="administrateur">Administrateur</option>
	  				
		</select> <br><br>
		
  		<input type="submit" value="Submit">
</form> 
	
</body>
</html>