<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</head>
<body>
<jsp:include page="../partials/navbar.jsp" />
<div class="container">

    <form action="/ads/create" method="POST" class="uk-position-center uk-margin-top">
        <h1>Create a new Ad</h1>
        <div class="uk-margin">
            <label for="title">Title</label>
            <input class="uk-input" id="title" type="text" name="title">
        </div>
        <div class="uk-width-1-1">
            <select class="uk-select" name="category">
                <option>Space Items</option>
                <option>Space Property</option>
                <option>Space Vehicles</option>
                <option>Space Jobs</option>
            </select>
        </div>
        <div class="uk-width-1-1 uk-margin-small-top">
            <textarea class="uk-textarea" rows="5" placeholder="description" name="description"></textarea>
        </div>
        <div class="uk-width-1-1 uk-margin-small-top">
            <select class="uk-select" name="planet">
                <option>Jupiter</option>
                <option>Mercury</option>
                <option>Uranus</option>
                <option>Venus</option>
                <option>Mars</option>
                <option>Neptune</option>
            </select>
        </div>
        <button class="uk-button uk-width-1-1 uk-button-default uk-margin-small-top">Submit</button>
        </form>
    </div>
</body>
</html>
