<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="uk-container">
        <div class="uk-grid">
            <h1>Please fill in your information.</h1>
            <form action="" method="POST">

                <div class="uk-margin">
                    <label for="username">Username</label>
                    <input class="uk-input" id="username" type="text" name="username">
                </div>

                <div class="uk-margin">
                    <label for="email">Email</label>
                    <input class="uk-input" id="email" type="text" name="email">
                </div>

                <div class="uk-margin">
                    <label for="password">Password</label>
                    <input class="uk-input" id="password" type="password" name="password">
                </div>

                <div class="uk-margin">
                    <label for="confirm_password">Confirm Password</label>
                    <input class="uk-input" id="confirm_password" type="password" name="confirm_password">
                </div>

                <button type="submit" class="uk-button uk-button-default">Submit</button>

            </form>
        </div>
    </div>
</body>
</html>
