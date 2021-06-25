<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/header.css">
    <script src="https://kit.fontawesome.com/4a3b1f73a2.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Aref+Ruqaa&display=swap" rel="stylesheet">
    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>add product</title>
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
                        <div id="clothing"><a href="addprod.jsp"> ADD Product </a></div>
                        <div id="clothing"><a href="#"> Edit Product </a></div>
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
    <%
        int id=1;
        try{
        	Connection con=ConnectionProvider.getCon();
        	Statement st=con.createStatement();
        	ResultSet rs=st.executeQuery("SELECT max(id_prod) from produit");
        	while(rs.next())
        	{
        		id=rs.getInt(1);
        		id=id+1;
        	}
        }
        catch(Exception e)
        {}
        %>
    
    <div class="container">
   <div class="row" id=""><br></div>
   <div class="row" id=""><br></div>
   <div class="row" id=""><br></div>
   <div class="row" id=""><br></div>
    
    <div class="row"> <br> </div>
        <form action="addproductaction.jsp" method="post">
            <div class="row"><h3>ADD Your Product!</h3> <br></div>
            <div class="row" >
            <div class="row row-cols-lg-auto g-3 align-items-center">
                <div class="col-md-4">
                <h3>This is the product number:<%out.print(id); %>  </h3>
            </div>
            </div>
            </div>
            <div class="row"><br></div>
            <div class="row row-cols-lg-auto g-3 align-items-center" >
                <div class="col-md-4">
                <input type="text" class="form-control" name="name" placeholder="Product Name" required>
            </div>
            <div class="col-md-4 offset-md-4">
                <input type="text" class="form-control" name="price" placeholder="Product Price" required>
            </div>
            </div>
            <br>
            <div class="row row-cols-lg-auto g-3 align-items-cente">
                <div class="col-md-4">
                <input type="number" class="form-control" name="qte" placeholder="Product Quantity" required>
                </div>
                <div class="col-md-4 offset-md-4">
                <select class="form-select" name="categorie" id="inlineFormSelectPref">
                    <option selected>Choose...</option>
                    <option value="1">blouza</option>
                    <option value="2">Jebba</option>
                    <option value="3">Mdhala</option>
                    <option value="3">Houli</option>
                  </select>
            </div>
            </div>
            <br>
            <div class="row" >
                

            </div>
            <br>
            <div class="row" >
                <div>
                <input name="file" type="file" required>
            </div>

            </div>
               <div class="row" id=""><br></div>
   				<div class="row" id=""><br></div>
   				<button type="submit" class="btn btn-primary">ADD Product</button>
   				
   				<div class="row" id=""><br></div>
   				<div class="row" id=""><br></div>
        </form>
        <%
        String msg=request.getParameter("msg");
        if("done".equals(msg)){
        	
        %>
        <h3>Product Added Successfully!</h3>
        <%} %>
        <%
        if("undone".equals(msg)){
        	
        %>
        <h3>Some thing went wrong! Please try again</h3>
        <%} %>
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
    
</body>
</html>