<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


<div class="uk-container">
    <h1>Here is your add!</h1>


    <div>
        <div class="uk-card uk-card-default uk-card-hover">
            <div class="uk-card-body">
                <h3 class="uk-card-title">${sessionScope.selectedAd.title}</h3>
            </div>
            <div class="uk-card-media-top">
                <img src="${sessionScope.selectedAd.picture}" alt="">
            </div>
            <div class="uk-card-body">
                <p>${sessionScope.selectedAd.description}</p>
            </div>
        </div>
    </div>

</div>

</body>
</html>
