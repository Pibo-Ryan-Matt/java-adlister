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

    <section class="uk-margin-bottom">
        <h1 class="uk-text-center">Space Listing</h1>
        <div uk-grid class="uk-child-width-1-3 uk-text-center">
            <form class="uk-width-1-6@m uk-width-1-1@s" action="/ads" method="GET">
                <button class="uk-button uk-button-primary" type="submit">View All</button>
            </form>
            <form class="uk-margin-xlarge-left uk-width-1-2" action="/search" method="POST">
                <input class="uk-input" type="text" placeholder="Search" name="search">
                <input type="hidden" style="display: none" name="searchLocation" value="1" />
                <button class="search-btn" uk-icon="search" type="submit"></button>
            </form>
        </div>
    </section>


    <section uk-grid class="uk-child-width-1-2@s uk-child-width-1-3@m">
        <c:forEach var="ad" items="${ads}">
            <form action="" method="POST" id="adForm${ad.id}">
                <div class="uk-card-body uk-card-secondary" onclick="javascript:document.getElementById('adForm${ad.id}').submit();">
                    <div>
                        <h2 class="ad-title uk-card-title">${ad.title}</h2>
                        <h6 class="ad-cat">${ad.category}</h6>
                    </div>
                    <p class="ad-desc">${ad.description}</p><span>...</span>
                    <input type="hidden" style="display: none" name="selected-ad-id" value="${ad.id}" />
                </div>
            </form>
        </c:forEach>
    </section>
</div>

</body>
</html>
