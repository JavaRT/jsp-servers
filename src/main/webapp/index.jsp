<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="headers.jsp"/>

</head>
<body>




<jsp:include page="navigator.jsp"/>
<div class="container">
<h1>
<%
    // Java code
    String nameParam = request.getParameter("name");
    if (nameParam == null ) {
        out.println("hello user");
    } else {
        out.println("hello " + nameParam + "!");
    }
%>
    </h1>
    </div>
<jsp:include page="footers.jsp"/>
</body>
</html>