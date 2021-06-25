<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> main </title>

    <link rel="stylesheet" href="css/header.css">
    <script src="https://kit.fontawesome.com/4a3b1f73a2.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Aref+Ruqaa&display=swap" rel="stylesheet">
</head>
<body>

    <header>
        <section>
            <!-- MAIN CONTAINER -->
            <div id="container">
                <!-- SHOP NAME -->
                <div id="shopName"><a href="index.jsp" style="font-family: 'Aref Ruqaa', serif;"> <b>بلوزا</b> </a></div>
                    <!-- COLLCETIONS ON WEBSITE -->
                    <div id="collection">
                        <div id="clothing"><a href="index.jsp#traditional"> CLOTHING </a></div>
                        <div id="accessories"><a href="accessories.html"> </a></div>
                    </div>
                    <!-- SEARCH SECTION -->
                    <div id="search">
                        <i class="fas fa-search search"></i>
                        <input type="text" id="input" name="searchBox" placeholder="Search for Clothing">
                    </div>
                    <!-- USER SECTION (CART AND USER ICON) -->
                    <div id="user">
                        <a href="cart.jsp"> <i class="fas fa-shopping-cart addedToCart"><div id="badge"> 0 </div></i></a>
                        <a href="SignUP.jsp"> <i class="fas fa-user-circle userIcon"></i> </a>
                    </div>
            </div>

        </section>
    </header>

</body>
</html>