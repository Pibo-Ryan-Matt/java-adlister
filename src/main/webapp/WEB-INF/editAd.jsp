<%--
  Created by IntelliJ IDEA.
  User: ryanhoupt
  Date: 12/18/18
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="uk-container">
    <div class="uk-text-center uk-grid">
        <div class="uk-width-1-1">
            <div class="uk-card uk-card-default uk-card-body">
                <form action="/edit" method="POST">
                    <div class="uk-grid">
                        <div class="uk-width-1-2">
                            <div class="uk-width-xlarge uk-margin-medium-bottom">
                                <input class="uk-input uk-form-width-large" type="text" name="Title" placeholder="Title">
                            </div>
                            <div class="uk-width-1-1">
                                <textarea class="uk-textarea" rows="5" placeholder="Description" name="Description"></textarea>
                            </div>
                        </div>
                        <div class="uk-width-1-2">
                            <div class="uk-width-1-1 uk-margin-medium-bottom">
                                <select class="uk-select">
                                    <option>Exploration</option>
                                    <option>Buying</option>
                                    <option>Selling</option>
                                </select>
                            </div>
                            <div class="uk-width-1-1">
                                <select class="uk-select">
                                    <option>Jupiter</option>
                                    <option>Mercury</option>
                                    <option>Uranus</option>
                                    <option>Venus</option>
                                    <option>Mars</option>
                                    <option>Neptune</option>
                                </select>
                            </div>
                            <div class="uk-width-1-1">
                                <button class="uk-button uk-button-default uk-margin-small-top uk-position-bottom-right">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>
