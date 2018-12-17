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
                            <p><Strong>Username: </Strong>
                        </div>
                        <div class="uk-width-1-3">
                            <Strong>Email: </Strong>
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
                    <h3 class="uk-card-title">User Ads <a class="uk-position-top-right uk-position-large" uk-icon="plus"></a></h3>
                        <div class="uk-grid">

                            <c:forEach var="ad" items="${ads}">
                                <div class="uk-card uk-card-default uk-card-body">
                                    <div class="uk-width-1-2">
                                        <h3>${ad.title}</h3>
                                        <p>${ad.description}</p>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>
