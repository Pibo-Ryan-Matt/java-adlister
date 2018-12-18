<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="SpaceLIster!" />
    </jsp:include>


</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <canvas id="bgCanvas">
        <canvas id="terCanvas">

        </canvas>
    </canvas>

    <div  class="uk-child-width-expand@s uk-text-center uk-grid-match main" uk-grid>
        <div>
            <div class="uk-card   uk-card-body">
                <div class="planet">
                    <div class="wrap">
                        <div class="background"></div>
                        <div class="clouds"></div>
                    </div>
                    <div class="mask"></div>
                </div>

            </div>
        </div>
        <div>
            <div class="uk-card uk-card-default transBg uk-card-body">
                <h1>SPACELISTER</h1>
                <h4>Your way through space ads</h4>
            </div>
        </div>

    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <div>

    </div>
    <div  class="uk-child-width-expand@s main planetSide" uk-grid>
    <h1 class="uk-width-1-1@m ">Choose your location</h1>

        <div class="uk-width-1-2@m ">
            <ul class="uk-thumbnav uk-thumbnav-vertical" uk-margin>
                <li><a href="#"><img src="http://pluspng.com/img-png/jupiter-planet-png-file-jupiter-transparent-png-779.png" width="100" alt=""></a></li>
                <li><a href="#"><img src="http://wiki.bacterialtakeover.com/images/4/41/Mercury.png" width="100" alt=""></a></li>
                <li><a href="#"><img src="https://vignette.wikia.nocookie.net/diepio/images/6/6d/Uranus_spacepedia.png/revision/latest?cb=20180601142434" width="100" alt=""></a></li>
                <li><a href="#"><img src="https://vignette.wikia.nocookie.net/spongebob/images/f/f4/3D_Venus.png/revision/latest?cb=20181125160841" width="100" alt=""></a></li>
                <li><a href="#"><img src="https://vignette.wikia.nocookie.net/diepio/images/0/0e/Mars_spacepedia.png/revision/latest?cb=20180601141159" width="100" alt=""></a></li>
                <li><a href="#"><img src="https://pics.clipartpng.com/Neptune_PNG_Clip_Art-3004.png" width="100" alt=""></a></li>
            </ul>
        </div>


    </div>


    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

</body>
</html>
