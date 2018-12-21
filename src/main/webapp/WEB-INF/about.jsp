<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="About" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="uk-container">
    <div class="uk-text-center uk-grid">
        <div class="uk-width-1-1">
            <div class="uk-card uk-card-secondary uk-card-body">
                <div class="uk-child-width-1-2@s" uk-grid>
                    <div>
                        <div class="uk-panel uk-panel-box uk-text-truncate"><h1>About : </h1></div>
                    </div>
                    <div>
                        <div class="uk-panel uk-panel-box uk-text-break "><div class="aboutMsg">This project is a comprehensive mockup of a full stack website</div><div class="aboutMsg"> that allows the user to interact in many different ways.</div><div class="aboutMsg"> Through database manipulation you can</div><div class="aboutMsg"> add/remove/edit ads and users.</div><div class="aboutMsg">
                        Imaginary future of humans leaving in space ,</div><div class="aboutMsg"> maybe after few hundreds years our</div><div class="aboutMsg"> website will be used ! maybe not.

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
</body>
</html>
