
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Student List</title>
    <jsp:include page="headers.jsp"/>
</head>
<body>
<div class="container">
    <jsp:include page="navigator.jsp"/>
    <table>
        <tr>
            <th>Id</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${requestScope.students}" var="student">
            <tr>
                <td>
                        ${student.id}
                </td>
                <td>
                        ${student.firstName}
                </td>
                <td>
                        ${student.lastName}
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/student/remove?stid=${student.id}">Remove</a>
                    <a href="${pageContext.request.contextPath}/student/details?id=${student.id}">Details</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<jsp:include page="footers.jsp"/>
</body>
</html>
