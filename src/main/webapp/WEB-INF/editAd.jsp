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
    <div class="uk-text-center uk-grid">
        <div class="uk-width-1-1">
            <div class="uk-card uk-card-default uk-card-body">
                <form action="" method="POST">
                    <div class="uk-grid">
                        <div class="uk-width-1-2">
                            <div class="uk-width-xlarge uk-margin-medium-bottom">
                                <input class="uk-input uk-form-width-large" type="text" name="title" placeholder="${sessionScope.adEdit.title}">
                            </div>
                            <div class="uk-width-1-1">
                                <textarea class="uk-textarea" rows="5" placeholder="${sessionScope.adEdit.description}" name="description"></textarea>
                            </div>
                        </div>
                        <div class="uk-width-1-2">
                            <div class="uk-width-1-1 uk-margin-medium-bottom">
                                <select class="uk-select" name="category">
                                    <option>Space Items</option>
                                    <option>Space Property</option>
                                    <option>Space Vehicles</option>
                                    <option>Space Jobs</option>
                                </select>
                            </div>
                            <div class="uk-width-1-1">
                                <div class="uk-margin uk-grid-small uk-child-width-auto uk-grid">
                                    <label><input value="Jupiter" name="planet" class="uk-checkbox" type="checkbox">Jupiter</label>
                                    <label><input value="Mercury" name="planet" class="uk-checkbox" type="checkbox">Mercury</label>
                                    <label><input value="Uranus" name="planet" class="uk-checkbox" type="checkbox">Uranus</label>
                                    <label><input value="Venus" name="planet" class="uk-checkbox" type="checkbox">Venus</label>
                                    <label><input value="Mars" name="planet" class="uk-checkbox" type="checkbox">Mars</label>
                                    <label><input value="Neptune" name="planet" class="uk-checkbox" type="checkbox">Neptune</label>
                                </div>
                            </div>
                            <div class="uk-width-1-1">
                                <button type="submit" class="uk-button uk-button-default uk-margin-small-top uk-position-bottom-right uk-position-large">Submit</button>
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
