<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="SpaceLIster!" />
    </jsp:include>


</head>
<body>
<div class="wraper">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <canvas id="bgCanvas">
        <canvas id="terCanvas">

        </canvas>
    </canvas>

    <div  class="uk-child-width-expand@s  uk-text-center uk-grid-match main" uk-grid>
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

        <div  class="uk-child-width-expand@s  main uk-grid planetSide">

            <div class="uk-width-1-2@m uk-margin-large-top uk-margin-large-bottom uk-text-center " uk-scrollspy="cls: uk-animation-slide-left; repeat: true">
                <h1 class="uk-width-1-1@m uk-padding-small">CHOOSE BY LOCATION</h1>


                <div class="uk-thumbnav uk-margin-large-left uk-margin-large-top uk-padding-small">
                    <div>
                        <form action="/search" method="POST">
                            <input type="hidden" style="display: none" name="searchLocation" value="2" />
                            <input type="hidden" style="display: none" name="search" value="Space Items" />

                            <div class="planetFloat"><a href="#"><img src="http://pluspng.com/img-png/jupiter-planet-png-file-jupiter-transparent-png-779.png" width="100" alt=""><label>Jupiter</label></a></div>
                        </form>
                    </div>
                    <div>
                        <form action="/search" method="POST">
                            <input type="hidden" style="display: none" name="searchLocation" value="2" />
                            <input type="hidden" style="display: none" name="search" value="Space Items" />


                            <div class="planetFloat"><a href="#"><img src="http://wiki.bacterialtakeover.com/images/4/41/Mercury.png" width="100" alt=""><label>Mercury</label></a></div>
                        </form>
                    </div>
                </div>

                <div class="uk-thumbnav uk-margin-large-left uk-margin-medium-top uk-padding-small">
                    <div>
                        <form action="/search" method="POST">
                            <input type="hidden" style="display: none" name="searchLocation" value="2" />
                            <input type="hidden" style="display: none" name="search" value="Space Items" />
                            <div class="planetFloat"><a href="#"><img src="https://vignette.wikia.nocookie.net/diepio/images/6/6d/Uranus_spacepedia.png/revision/latest?cb=20180601142434" width="100" alt=""><label>Uranus</label></a></div>
                        </form>
                    </div>
                    <div>
                        <form action="/search" method="POST">
                            <input type="hidden" style="display: none" name="searchLocation" value="2" />
                            <input type="hidden" style="display: none" name="search" value="Space Items" />
                            <div class="planetFloat"><a href="#"><img src="https://vignette.wikia.nocookie.net/spongebob/images/f/f4/3D_Venus.png/revision/latest?cb=20181125160841" width="100" alt=""><label>Venus</label></a></div>
                        </form>
                    </div>
                </div>
                <div class="uk-thumbnav uk-margin-large-left uk-margin-medium-top uk-padding-small">
                    <div>
                        <form action="/search" method="POST">
                            <input type="hidden" style="display: none" name="searchLocation" value="2" />
                            <input type="hidden" style="display: none" name="search" value="Space Items" />
                            <div class="planetFloat"><a href="#"><img src="https://vignette.wikia.nocookie.net/diepio/images/0/0e/Mars_spacepedia.png/revision/latest?cb=20180601141159" width="100" alt=""><label>Mars</label></a></div>
                        </form>
                    </div>
                    <div>
                        <form action="/search" method="POST">
                            <input type="hidden" style="display: none" name="searchLocation" value="2" />
                            <input type="hidden" style="display: none" name="search" value="Space Items" />

                            <div class="planetFloat"><a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/d/da/3D_Neptune.png" width="100" alt=""><label>Neptune</label></a></div>
                        </form>
                    </div>
                </div>
            </div>




        <div class="uk-margin-large-top uk-margin-large-bottom categories uk-width-1-2@l uk-text-center" uk-scrollspy="cls: uk-animation-slide-right; repeat: true">
            <h1 class="uk-width-1-1@m uk-margin-large-left uk-padding-small">CHOOSE BY CATEGORY</h1>

            <div>
              <form action="/search" method="POST">
                    <input type="hidden" style="display: none" name="searchLocation" value="2" />
                    <input type="hidden" style="display: none" name="search" value="Space Items" />
                    <div  class=" category uk-padding-small" >
                        <button class="custom-btn" type="submit"><i class="fas categorylogo fa-satellite"></i><h3>Space items</h3></button>
                    </div>
                </form>

                <form action="/search" method="POST">
                    <input type="hidden" style="display: none" name="searchLocation" value="2" />
                    <input type="hidden" style="display: none" name="search" value="Space Property" />
                    <div class="category uk-padding-small" >
                        <button class="custom-btn" type="submit"><i class="fas categorylogo fa-globe"></i><h3>Space property</h3></button>
                    </div>
                </form>

                <form action="/search" method="POST">
                    <input type="hidden" style="display: none" name="searchLocation" value="2" />
                    <input type="hidden" style="display: none" name="search" value="Space Vehicles" />
                    <div class="category uk-padding-small" >
                        <button class="custom-btn" type="submit"><i class="fas categorylogo fa-rocket"></i><h3>Space vehicles</h3></button>
                    </div>
                </form>

                <form action="/search" method="POST">
                    <input type="hidden" style="display: none" name="searchLocation" value="2" />
                    <input type="hidden" style="display: none" name="search" value="Space Jobs" />
                    <div class="category uk-padding-small">
                        <button class="custom-btn" type="submit"><i class="fab categorylogo fa-reddit-alien"></i><h3>Space jobs</h3></button>
                    </div>
                </form>
            </div>


        </div>


    </div>
    <div class="uk-grid uk-child-width-expand@s">

        <div class="rocket">
          <img src="https://i.ibb.co/Zf0gpty/rocket.png" alt="rocket" border="0" />
          <div class="uk-grid uk-child-width-expand@s">

            <div class="smoke"></div>
            <div class="smoke"></div>
            <div class="smoke"></div>
            <div class="smoke"></div>
            <div class="smoke"></div>
            <div class=""></div>
              <div class=""></div>

          </div>


        </div>
        <div>
          <img src="https://i.ibb.co/L9QzvSw/spaceship.png" alt="spaceship" class="spaceShip" border="0">
           <img src="https://i.ibb.co/ZdX3F4P/h.png" alt="h" class="humanIcon floatInfinit" border="0">

                   </div>
    </div>


    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</div>

    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

</body>
</html>
