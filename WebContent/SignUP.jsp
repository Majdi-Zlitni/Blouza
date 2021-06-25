<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sign Up</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta charset="utf-8" />
      <link rel="stylesheet" type="text/css" href="css/signup_style.css" />
      <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
      />
      <link
        href="https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600"
        rel="stylesheet"
        type="text/css"
      />
      <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
<title>SignUP</title>
</head>
<body class="body">
      <div class="login-page">
        <div class="form">
          <form class="login-form" action="SignUPAction.jsp" method="post">
            <lottie-player
              src="https://assets4.lottiefiles.com/datafiles/XRVoUu3IX4sGWtiC3MPpFnJvZNq7lVWDCa8LSqgS/profile.json"
              background="transparent"
              speed="1"
              style="justify-content: center"
              loop
              autoplay
            ></lottie-player>
            <input type="text" name="email" id="email" placeholder="Email address" required/>
            <input type="text" name="name" id="name" placeholder="Full name" required/>
            <input type="text" name="addres" id="addres" placeholder="Addres" />
            <input type="text" name="user" id="user" placeholder="Pick a username" required/>
            <input type="password" name="password" id="password" placeholder="Set a password" required/>
            <i class="fas fa-eye" onclick="show()"></i>
            <br>
            <br>
            <%
            String msg=request.getParameter("msg");
            if("invalid".equals(msg)){
            %>
            <h3 style="color:#FF0000;">this email already exists</h3>
            <%} %>
            <button type="submit">
              SIGN UP
            </button>
            <p>have an account already?</p>
            <button onclick="location.href = 'http://localhost:8080/Blouza/login.jsp';" >
              LOG IN
            </button>
          </form>

        </div>
      </div>
    </body>
    <script>
      function show() {
        var password = document.getElementById("password");
        var icon = document.querySelector(".fas");

        // ========== Checking type of password ===========
        if (password.type === "password") {
          password.type = "text";
        } else {
          password.type = "password";
        }
      }
    </script>
  </html>
