<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
    <style>
        .text {
            text-overflow: ellipsis;
            width: 200px;
            overflow: hidden;
            white-space: nowrap;
        }
        .white {
            color: white;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="uk-container">
    <!-- Profile information and Home Planet -->
    <div class="uk-text-center uk-grid">
        <div class="uk-width-1-1">
            <div class="uk-card uk-card-secondary uk-card-body">
                <div class="uk-grid">
                    <div class="uk-width-1-3">
                        <h3 class="white"><Strong>Username: ${sessionScope.user.username}</Strong></h3>
                    </div>
                    <div class="uk-width-1-3">
                        <h3><Strong class="white">Email: ${sessionScope.user.email}</Strong></h3>
                    </div>
                    <div class="uk-width-1-3">
                        <a href="edit"><h3 class="white"><strong>Edit</strong></h3></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="uk-width-1-2 uk-margin-small-top">
            <div class="uk-card uk-card-secondary uk-card-body">
                <h3 class="uk-card-title">Your Home Planet Is..</h3>
                <img src="${sessionScope.user.planet}" width="225px" height="225px" />
            </div>
        </div>
        <!-- Current User Ads -->
        <div class="uk-width-1-2 uk-margin-small-top">
            <div class="uk-card uk-card-secondary uk-card-body">
                <h3 class="uk-card-title">User Ads <a href="ads/create" class="uk-position-top-right uk-position-large" uk-icon="plus"></a></h3>
                <div class="uk-grid">
                    <c:forEach var="ad" items="${ads}">
                        <c:choose>
                            <c:when test="${sessionScope.user.id == ad.userId}">
                                <div class="uk-card uk-card-secondary uk-card-body uk-width-1-2" onclick="javascript:document.getElementById('adForm${ad.id}').submit();">
                                    <form action="/profile" method="POST" id="editForm${ad.id}">
                                        <button type="submit" uk-icon="pencil" class="uk-position-top-left uk-position-small"></button>
                                        <input type="hidden" style="display: none" name="edit-or-view" value="edit"/>
                                        <input type="hidden" style="display: none" name="selectedAdEdit" value="${ad.id}" />
                                    </form>
                                    <form action="/deleteAd" method="POST" id="deleteForm${ad.id}">
                                        <button type="submit" uk-icon="ban" class="uk-position-top-right uk-position-small"></button>
                                        <input type="hidden" style="display: none" name="edit-or-view" value="delete"/>
                                        <input type="hidden" style="display: none" name="selectedAdDelete" value="${ad.id}" />
                                    </form>
                                    <form action="/profile" method="POST" id="adForm${ad.id}">
                                            <div class="uk-width-extend">
                                                <h3>${ad.title}</h3>
                                                <p class="text">${ad.description}</p>
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