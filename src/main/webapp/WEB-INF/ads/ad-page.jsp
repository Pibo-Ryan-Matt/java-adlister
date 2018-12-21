<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>
    <style>
        .text {
            color: white;
        }
    </style>
</head>
<body class="uk-background-secondary text">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="uk-container">
    <h1 class="uk-text-center text"><strong>${sessionScope.selectedAd.title}</strong></h1>

    <div class="uk-grid">
        <div class="uk-width-1-1 uk-text-center">
            <h1 class="text"><i>Category</i></h1>
        </div>
    </div>
    <div class="uk-grid">
        <div class="uk-width-1-1 uk-text-center uk-margin-medium-bottom">
            <h3 class="uk-card-title uk-margin-small-left text">${sessionScope.selectedAd.category}</h3>
        </div>
        <div class="uk-width-1-2">
            <h1 class="uk-text-center text"><i>Description</i></h1>
                <div class="uk-text-center uk-margin-medium-bottom">
                        <p>${sessionScope.selectedAd.description}</p>
                </div>
        </div>


        <%--planet images--%>
        <div class="uk-width-1-2">
            <h1 class="uk-text-center text"><i>Available Planets</i></h1>
            <div class="uk-grid-medium uk-child-width-expand@s uk-text-center" uk-grid>
                <c:forEach var="planet" items="${planets}">
                    <div class="uk-text-center">
                        <img src="${planet.url}" height="100px" width="100px" alt="">
                        <h3 class="text">${planet.name}</h3>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

</div>

</body>
</html>
