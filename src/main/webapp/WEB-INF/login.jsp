<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <form action="/login" method="POST" class="uk-position-center">
            <h1>Please Log In</h1>
            <div class="uk-margin">
                <label for="username">Username</label>
                <input class="uk-input" id="username" type="text" name="username">
            </div>

            <div class="uk-margin">
                <label for="password">Password</label>
                <input class="uk-input" id="password" type="password" name="password">
            </div>

            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>
</body>
</html>
