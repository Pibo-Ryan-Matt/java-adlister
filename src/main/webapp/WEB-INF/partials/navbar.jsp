<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; bottom: #transparent-sticky-navbar">
    <nav class="uk-navbar-container uk-margin" style="position: relative; z-index: 980;" uk-navbar>
        <div class="uk-navbar-left">
            <a class="uk-navbar-item uk-logo" href="/ads">Space Lister</a>
        </div>
        <div class="uk-navbar-right">
            <ul class="uk-navbar-nav">
                <li><a href="/">Home</a></li>
                <c:choose>
                    <c:when test="${sessionScope.user == null}">
                        <li><a href="/login">Login</a></li>
                        <li><a href="/register">Register</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/ads/create">Create Ad</a></li>
                        <li><a href="/profile">Profile</a></li>
                        <li><a href="/logout">Logout</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
</div>