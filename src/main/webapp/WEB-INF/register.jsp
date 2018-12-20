<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">

            <form action="" method="POST" class="uk-position-center uk-margin-top">
                <h1>Please fill in your information.</h1>
                <div class="uk-margin">
                    <label for="username">Username</label>
                    <c:choose>
                        <c:when test='${sessionScope.noUser || sessionScope.sameUser}'>
                            <c:set value="uk-form-danger" var="failedUserInput"/>
                            <c:choose>
                                <c:when test="${sessionScope.noUser}">
                                    <span><em>--No Username Entered--</em></span>
                                </c:when>
                                <c:otherwise>
                                    <span><em>--Username Already Exists--</em></span>
                                </c:otherwise>
                            </c:choose>
                        </c:when>
                        <c:when test='${sessionScope.noUser == false && sessionScope.sameUser == false}'>
                            <c:set value="uk-form-success" var="failedUserInput"/>
                        </c:when>
                    </c:choose>
                    <input class="uk-input ${failedUserInput}" id="username" type="text" name="username" value="${sessionScope.failedUser.username}">
                </div>

                <div class="uk-margin">
                    <label for="email">Email</label>
                    <c:choose>
                        <c:when test='${sessionScope.noEmail || sessionScope.sameEmail}'>
                            <c:set value="uk-form-danger" var="failedEmail"/>
                            <c:choose>
                                <c:when test="${sessionScope.noEmail}">
                                    <span><em>--No Email Entered--</em></span>
                                </c:when>
                                <c:otherwise>
                                    <span><em>--Email Already Exists--</em></span>
                                </c:otherwise>
                            </c:choose>
                        </c:when>
                        <c:when test='${sessionScope.noEmail == false && sessionScope.sameEmail == false}'>
                            <c:set value="uk-form-success" var="failedEmail"/>
                        </c:when>
                    </c:choose>
                    <input class="uk-input ${failedEmail}" id="email" type="text" name="email" value="${sessionScope.failedUser.email}">
                </div>

                <div class="uk-width-1-1">
                    <select title="planet" class="uk-select" name="planet">
                        <option>Jupiter</option>
                        <option>Mercury</option>
                        <option>Uranus</option>
                        <option>Venus</option>
                        <option>Mars</option>
                        <option>Neptune</option>
                    </select>
                </div>

                <div class="uk-margin">
                    <label for="password">Password</label>
                    <c:choose>
                        <c:when test='${sessionScope.differentPasswords || sessionScope.passwordEmpty}'>
                            <c:set value="uk-form-danger" var="failedPassword"/>
                            <c:choose>
                                <c:when test="${sessionScope.differentPasswords}">
                                    <span><em>--Passwords Must Be The Same--</em></span>
                                </c:when>
                                <c:otherwise>
                                    <span><em>--Must Enter Password--</em></span>
                                </c:otherwise>
                            </c:choose>
                        </c:when>
                        <c:when test='${sessionScope.differentPasswords == false}'>
                            <c:set value="uk-form-success " var="failedPassword"/>
                        </c:when>
                    </c:choose>
                    <input class="uk-input ${failedPassword}" id="password" type="password" name="password">
                </div>

                <div class="uk-margin">
                    <label for="confirm_password">Confirm Password</label>
                    <input class="uk-input ${failedPassword}" id="confirm_password" type="password" name="confirm_password">
                </div>

                <button type="submit" class="uk-button uk-button-default">Submit</button>

            </form>
    </div>
    <script>
        <%@include file="./js/register.js"%>
    </script>
</body>
</html>
