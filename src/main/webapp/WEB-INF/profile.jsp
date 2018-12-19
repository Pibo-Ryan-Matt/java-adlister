<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="uk-container">
    <!-- Profile information and Home Planet -->
    <div class="uk-text-center uk-grid">
        <div class="uk-width-1-1">
            <div class="uk-card uk-card-default uk-card-body">
                <div class="uk-grid">
                    <div class="uk-width-1-3">
                        <p><Strong>Username: ${sessionScope.user.username}</Strong>
                    </div>
                    <div class="uk-width-1-3">
                        <Strong>Email: ${sessionScope.user.email}</Strong>
                    </div>
                    <div class="uk-width-1-3">
                        <a href="edit">Edit</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="uk-width-1-2 uk-margin-small-top">
            <div class="uk-card uk-card-default uk-card-body">
                <h3 class="uk-card-title">Your Home Planet Is..</h3>
                <img src="img/Earth.jpg" width="512px" height="391px" />
            </div>
        </div>
        <!-- Current User Ads -->
        <div class="uk-width-1-2 uk-margin-small-top">
            <div class="uk-card uk-card-default uk-card-body">
                <h3 class="uk-card-title">User Ads <a href="ads/create" class="uk-position-top-right uk-position-large" uk-icon="plus"></a></h3>
                <div class="uk-grid">
                    <c:forEach var="ad" items="${ads}">
                        <c:choose>
                            <c:when test="${sessionScope.user.id == ad.userId}">
                                <div class="uk-card uk-card-default uk-card-body uk-margin-small-left uk-margin-small-right" onclick="javascript:document.getElementById('adForm${ad.id}').submit();">
                                    <form action="" method="POST">
                                        <a href="editAd" uk-icon="pencil" class="uk-position-top-right uk-position-small"></a>
                                        <input type="hidden" style="display: none" name="edit-or-view" value="edit"/>
                                    </form>
                                    <form action="" method="POST" id="adForm${ad.id}">
                                            <div class="uk-width-extend">
                                                <h3>${ad.title}</h3>
                                                <p>${ad.description}</p>
                                                <input type="hidden" style="display: none" name="selected-ad-id" value="${ad.id}" />
                                                <input type="hidden" style="display: none" name="edit-or-view" value="view"/>
                                            </div>
                                    </form>
                                </div>
                            </c:when>
                            <c:otherwise />
                        </c:choose>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>