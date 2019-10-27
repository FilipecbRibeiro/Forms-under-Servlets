<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Submit</title>
</head>
<body>
Name: <%=request.getParameter("fullname") %>
</br>
Gender: <%=request.getParameter("gender") %>
</br>
<%--			ON THE LANGUAGUE PART WE CAN SELETC MULTIPLE BUT ONLY ONE WILL APPEAR 
				SO HOW TO SOLVE IT? USING SCRIPLETS --%>
Language: <%

String []progrLanguages= request.getParameterValues("language");
if(progrLanguages!= null){
	for(int i=0; i< progrLanguages.length;i++){
	
		out.print("<br>");
		out.print(progrLanguages[i]);
}
}else{
	out.print("None of the programming languages were selected!");
}


request.getParameter("language");

%>
</br>
Level: <%=	request.getParameter("level") %>
</br>
</body>
</html>


<%--The name of parameters will be according to our form in the file form.jsp


									-->fullname
									-->gender
									-->language
									-->level

URL:
because on the form we use method get All the information will appear on URL and because of that we 
can grab all the info with the request.getParameter("name");

URL: http://localhost:8080/Form_under_JSP/Submit.jsp
But what happen if we use on the form the method post?
as it can be seen now the url is normal but we are still being able to read it how ?  whenever we use post 
method the information is passed by an hidden channel that is not avaiable to the user!!

--%>