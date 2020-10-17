<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--  http://serwer.com/kontekst/minionki  --%>
<%--        =->   multiplication.jsp ->  http://serwer.com/kontekst/minionki/multiplication.jsp --%>
<%--        =->   /multiplication.jsp ->  http://serwer.com/kontekst/multiplication.jsp --%>
<%--        =->   / ->  http://serwer.com/ --%>
<%--        =->   / ->  http://serwer.com/kontekst/ --%>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/">Home</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/multiplication.jsp">Tabliczka mnożenia</a>
    </li>
</ul>