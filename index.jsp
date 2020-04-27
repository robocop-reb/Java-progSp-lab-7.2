<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title> JSTL c:import Tag Example</title>
</head>
<body>
<c:import var="mydata" url="/display.jsp"/>
<c:out value="${mydata}"/>
<c:set var="word" value="REEEEEEEEEEE"/>
<c:out value="${word}"/>
</body>
</html>