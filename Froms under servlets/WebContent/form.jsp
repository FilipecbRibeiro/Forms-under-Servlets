<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form JSP</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/ServletController" method="get">

Full Name: <input name="fullname" type="text" required></br>
Gender: <input type="radio" name="gender" value="Male" checked> Male
		<input type="radio" name="gender" value="Female"> Female
		</br>
Languages: <input type="checkbox" name="language" value="Java">Java
			<input type="checkbox" name="language" value="NodeJs"> NodeJS
			<input type="checkbox" name="language" value="Python"> Python
			<input type="checkbox" name="language" value="C++"> C++
		</br>
Level : <select name="level">
		<option value="Basic">Basic</option> 
		<option value="Intermedium">Intermedium</option>
		<option value="Advanced">Advanced</option>
</select>
</br>
	<input type="submit" value="Submit">


</form>
</body>
</html>


<%-- -- How form interact with webserver

						REQUEST
				*****************************>  
		FORM									WEB APPLICATION
				<***************************
						RESPONSE
						
				Communications Methods!!!
						1-POST
						2-GET		
						
						
<input> Defines an input control for the form
<textarea> Defines a multiline(text area) input control for the form
<label> Defines a label for an <input> element for the form
<fieldset> Groups related elements in a form for the form
<legend> Defines a caption for a <fieldset> element for the form
<select> Defines a drop-down list for the form
<optgroup> Defines a group of related options in a drop-down list for the form
<option> Defines an option in a drop-down list for the form
<button> Defines a clickable button
						
 --%>