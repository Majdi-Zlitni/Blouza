<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SLIDER</title>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
    <style>
        body
        {
            margin: 0;
        }
        #containerSlider
        {
            margin: auto;
            width: 90%;
            text-align: center;
            padding-top: 100px;
            box-sizing: border-box;
        }
        #containerSlider img
        {
            width: 100%;
            height: 140%;
            text-align: center;
            align-content: center;
        }
        @media(max-width: 732px)
        {
            #containerSlider img
            {
                height: 12em;
            }
        }
        @media(max-width: 500px)
        {
            #containerSlider img
            {
                height: 10em;
            }
        }
    .centred {
        margin-left: auto;
  margin-right: auto;
    }
    </style>

</head>
<body>
    <section>
            <div id="containerSlider">
                <div id="slidingImage"> <img src="img/img1.png" alt="image1" class="centred" style="width: 30%;"> </div>
                <div id="slidingImage"> <img src="img/img2.png" alt="image2" class="centred" style="width: 30%;"> </div>
                <div id="slidingImage"> <img src="img/img3.png" alt="image3" class="centred" style="width: 30%;"> </div>
                <div id="slidingImage"> <img src="img/img4.png" alt="image4" class="centred" style="width: 30%;"> </div>
            </div>
    </section>
</body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
    <script>
        $(document).ready(function()
        {
        $('#containerSlider').slick({
            dots: true,
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            });
        });
    </script>
</html>