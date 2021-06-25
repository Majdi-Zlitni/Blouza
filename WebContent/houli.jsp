<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>houli</title>
        <!-- header links -->
    <script src="https://kit.fontawesome.com/4a3b1f73a2.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <!-- slider links -->
    <!-- <script src="http://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script> -->
    <script src="js/jQuery3.4.1.js"></script>
    <link rel="stylesheet" href="css/hover.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>

    <!-- HEADER -->
    <div id="1"></div>
    <script>
        load("header.jsp");
        function load(url)
        {
            req = new XMLHttpRequest();
            req.open("GET", url, false);
            req.send(null);
            document.getElementById(1).innerHTML = req.responseText;
        }
    </script>

<div class="container">
   <div class="row" id=""><br></div>
   <div class="row" id=""><br></div>
   <div class="row" id=""><br></div>
   <div class="row" id=""><br></div>
    
    <div class="row"> <br> </div>
    <!-- CONTENT SECTION -->
 
        <div id="traditional" class="row">
            <h1> Our Houli </h1>
        </div>

            <div class="row">
                <div class="storage col-lg-3 col-md-6 d-flex justify-content-center" >
                	<div class="hovereffect">
                    <img src="img/houli1.jpg" class="card-img-top pic" alt="...">
                    <div class="overlay ">
                    	<h2>640DT</h2>
           				<a class="info" href="#">Add to cart</a>
        			</div>
   				 </div>
        
                </div>

        
                <div class="col-lg-3 col-md-6 d-flex justify-content-center" >
                	<div class="hovereffect justify-content-center">
                    <img src="img/houli2.jpg" class="card-img-top pic" alt="...">
                    <div class="overlay">
                    	<h2>870DT</h2>
           				<a class="info" href="#">Add to cart</a>
        			</div>
   				 </div>
        
                </div>
        
                <div class="col-lg-3 col-md-6 d-flex justify-content-center">
                <div class="hovereffect">
                    <img src="img/houli3.jpg" class="card-img-top pic" alt="...">
                    <div class="overlay">
                    	<h2>800DT</h2>
           				<a class="info" href="#">Add to cart</a>
        			</div>
   				 </div>
        
                </div>

                <div class="col-lg-3 col-md-6 d-flex justify-content-center">
                <div class="hovereffect">
                    <img src="img/houli4.jpg" class="card-img-top pic" alt="...">
                    <div class="overlay">
                    	<h2>920DT</h2>
           				<a class="info" href="#">Add to cart</a>
        			</div>
   				 </div>
        

                </div>
            </div>
        
            <div class="row"><br></div>
            <div class="row"><br></div>
            <div class="row"><br></div>
            
            <div class="row">
                <div class="col-lg-3 col-md-6 d-flex justify-content-center" >
                	<div class="hovereffect">
                    <img src="img/houli5.jpg" class="card-img-top pic" alt="...">
                    <div class="overlay">
                    	<h2>570DT</h2>
           				<a class="info" href="#">Add to cart</a>
        			</div>
   				 </div>
        
                </div>

        
                <div class="col-lg-3 col-md-6 d-flex justify-content-center" >
                	<div class="hovereffect justify-content-center">
                    <img src="img/houli6.jpg" class="card-img-top pic" alt="...">
                    <div class="overlay">
                    	<h2>640DT</h2>
           				<a class="info" href="#">Add to cart</a>
        			</div>
   				 </div>
        
                </div>
        
                <div class="col-lg-3 col-md-6 d-flex justify-content-center">
                <div class="hovereffect">
                    <img src="img/houli7.jpg" class="card-img-top pic" alt="...">
                    <div class="overlay">
                    	<h2>990DT</h2>
           				<a class="info" href="#">Add to cart</a>
        			</div>
   				 </div>
        
                </div>

                <div class="col-lg-3 col-md-6 d-flex justify-content-center">
                <div class="hovereffect">
                    <img src="img/houli8.jpg" class="card-img-top pic" alt="...">
                    <div class="overlay">
                    	<h2>800DT</h2>
           				<a class="info" href="#">Add to cart</a>
        			</div>
   				 </div>
        

                </div>
            </div>
            <div class="row"><br></div>
            <div class="row"><br></div>
            <div class="row"><br></div>
            </div>

    <!-- FOOTER -->

    <div id="4"></div>
    <script>
        load("footer.jsp");
        function load(url)
        {
            req = new XMLHttpRequest();
            req.open("GET", url, false);
            req.send(null);
            document.getElementById(4).innerHTML = req.responseText;
        }
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cart.js"></script>
</body>
</html>