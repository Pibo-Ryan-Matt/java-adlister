<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="uk-container">
    <h1 class="uk-text-center">Here is your add!</h1>


    <div class="uk-grid">
        <div class="uk-card uk-card-default uk-card-hover uk-width-1-3 uk-margin-medium-bottom">
            <div class="uk-card-body uk-text-center">
                <h3 class="uk-card-title">${sessionScope.selectedAd.title}</h3>
            </div>
        </div>
        <div class="uk-width-expand"></div>
        <div class="uk-card uk-card-default uk-card-hover uk-width-auto uk-margin-medium-bottom">
            <div class="uk-card-body uk-text-center">
                <h3 class="uk-card-title">${sessionScope.selectedAd.category}</h3>
            </div>
        </div>
        <div class="uk-width-1-2">
            <div class="uk-grid">
                <div class="uk-card uk-card-default uk-card-hover uk-width-auto">
                    <div class="uk-card-body uk-text-center">
                        <p>${sessionScope.selectedAd.description}</p>
                    </div>
                </div>
            </div>
        </div>

        <%--planet images--%>
        <div class="uk-width-1-2">
            <div class="uk-grid-medium uk-child-width-expand@s uk-text-center" uk-grid>
                <c:forEach var="planet" items="${planets}">
                    <div class="uk-card uk-card-default uk-card-body">
                        <img src="${planet.url}" alt="">
                        <h3>${planet.name}</h3>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

</div>

</body>
</html>
