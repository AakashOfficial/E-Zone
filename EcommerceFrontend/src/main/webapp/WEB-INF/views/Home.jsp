<html lang="en">
<head>
  <title>EZONE Home</title>
  <style type="text/css">
  body { padding-top: 20px; }
#myCarousel .nav a small {
    display:block;
}
#myCarousel .nav {
	background:#eee;
}
#myCarousel .nav a {
    border-radius:0px;
}
   
   /* style of sidebar */
   
  /*  #wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#wrapper.toggled {
    padding-left: 250px;
}

#sidebar-wrapper {
    z-index: 1000;
    position: fixed;
    left: 250px;
    width: 0;
    height: 100%;
    margin-left: -250px;
    overflow-y: auto;
    background: #000;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#wrapper.toggled #sidebar-wrapper {
    width: 250px;
}

#page-content-wrapper {
    width: 100%;
    position: absolute;
    padding: 15px;
}

#wrapper.toggled #page-content-wrapper {
    position: absolute;
    margin-right: -250px;
}

/* Sidebar Styles */

.sidebar-nav {
    position: absolute;
    top: 0;
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
}

.sidebar-nav li {
    text-indent: 20px;
    line-height: 40px;
}

.sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999999;
}

.sidebar-nav li a:hover {
    text-decoration: none;
    color: #fff;
    background: rgba(255,255,255,0.2);
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
    text-decoration: none;
}

.sidebar-nav > .sidebar-brand {
    height: 65px;
    font-size: 18px;
    line-height: 60px;
}

.sidebar-nav > .sidebar-brand a {
    color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover {
    color: #fff;
    background: none;
}

@media(min-width:768px) {
    #wrapper {
        padding-left: 250px;
    }

    #wrapper.toggled {
        padding-left: 0;
    }

    #sidebar-wrapper {
        width: 250px;
    }

    #wrapper.toggled #sidebar-wrapper {
        width: 0;
    }

    #page-content-wrapper {
        padding: 20px;
        position: relative;
    }

    #wrapper.toggled #page-content-wrapper {
        position: relative;
        margin-right: 0;
    }
} */
   
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <%-- <link href="<c:url value="/resources/css/log.css" />" rel="stylesheet"> --%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="Header.jsp"%>



  <div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item active">
          <img src="file:///S:/Program%20Files/Eclipse/Chalaki/EcommerceFrontend/src/main/webapp/resources/34.jpg">
           <div class="carousel-caption">
            <h3>Samsung Galaxy S7 Edge</h3>
            <p>
Explore a world of endless possibilities with the Samsung Galaxy S8. Featuring the innovative Infinity Display, this smartphone offers a smooth, curved surface without sharp angles. With an array of security features, such as the Iris Scanner, Face Recognition and a fingerprint sensor, the Galaxy S8 keeps all your private data safe from unauthorized access. Its 10nm processor, along with 4 GB of RAM, delivers a power-packed performance. The 8 MP front camera and the 12 MP rear camera further add to the Galaxy S8’s appeal.<a href="http://localhost:8031/EcommerceFrontend/ProductDesc/2" target="_blank" class="label label-danger">View Details</a></p>
          </div>
        </div><!-- End Item -->
 
         <div class="item">
          <img src="file:///S:/Program%20Files/Eclipse/Chalaki/EcommerceFrontend/src/main/webapp/resources/39.jpg">
           <div class="carousel-caption">
            <h3>Denim Shirt</h3>
            <p>
Look your stylish best in this fabulous dark blue denim slim fit shirt from the latest collection of Urbano Fashion. The youthful design, superior fabric and custom fit make it a must have for this season. Pair this uber cool shirt with any light shade of Urbano Fashion jeans or trousers for the perfect casual or party wear look.<a href="http://localhost:8031/EcommerceFrontend/ProductDesc/39" class="label label-danger">View Details</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="file:///S:/Program%20Files/Eclipse/Chalaki/EcommerceFrontend/src/main/webapp/resources/40.jpg">
           <div class="carousel-caption">
            <h3>Denim Shirt</h3>
            <p>
Rapphael Men Red Color Denim Shirt This Stylish Rapphael Shirt is an impeccable product displaying the richness of the fabric in a simple elegant style. The 100% cotton fabric is given a silky finish which is sure to make it a show stopper. <a href="http://localhost:8031/EcommerceFrontend/ProductDesc/40" class="label label-danger">View Details</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="file:///S:/Program%20Files/Eclipse/Chalaki/EcommerceFrontend/src/main/webapp/resources/42.jpg">
           <div class="carousel-caption">
            <h3>Samsung S4</h3>
            <p>
Auto Focus, Flash, Zero Shutter Lag, BIS, Dual Shot, Dual Recording, Sound and Shot, Drama Shot, Story Album, 360 Photo, Animated Photo, Eraser, Night, Best Photo, Best Face, Beauty Face, HDR (High Dynamic Range), Panorama, Sports</p><a href="http://localhost:8031/EcommerceFrontend/ProductDesc/42"  class="label label-danger">View Details</a></p>
          </div>
        </div><!-- End Item -->
                
      </div><!-- End Carousel Inner -->


    	<ul class="nav nav-pills nav-justified">
          <li data-slide-to="0" class="active"><a href="ProductPage">Samsung Galaxy S7<small>View All Products</small></a></li>
          <li data-target="#myCarousel" data-slide-to="1"><a href="ProductPage">Denim Shirt<small>View All Products</small></a></li>
          <li data-target="#myCarousel" data-slide-to="2"><a href="ProductPage">Shirt<small>View All Products</small></a></li>
          <li data-target="#myCarousel" data-slide-to="3"><a href="ProductPage">Samsung Galaxy S4<small>View All Products</small></a></li>
        </ul>


    </div><!-- End Carousel -->
</div>

 <%@include file="Footer.jsp"%>
</body>
</html>