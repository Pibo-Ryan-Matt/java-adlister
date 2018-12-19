<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="uk-container">
    <h1>Here Are all the ads!</h1>

    <div class="uk-margin">
        <form action="/search" method="POST">
            <input class="uk-input" type="text" placeholder="Search" name="search">
            <button uk-icon="search" type="submit"></button>
        </form>
        <form action="/ads" method="GET">
            <button class="uk-button uk-button-primary" type="submit">View All</button>
        </form>
    </div>

    <c:forEach var="ad" items="${ads}">
        <form action="" method="POST" id="adForm${ad.id}">
            <div class="uk-padding uk-background-muted uk-column-1-2 uk-column-divider" onclick="javascript:document.getElementById('adForm${ad.id}').submit();">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <input type="hidden" style="display: none" name="selected-ad-id" value="${ad.id}" />
            </div>
        </form>
    </c:forEach>
</div>

</body>
</html>
