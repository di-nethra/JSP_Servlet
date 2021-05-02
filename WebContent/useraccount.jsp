<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
anjana
<c:forEach var="cus" items="${cusresults}">
${cus.custID}
${cus.name} 
${cus.username} 
${cus.email} 
${cus.password} 

</c:forEach>
</body>
</html>