<%-- 
    Document   : login
    Created on : Apr 20, 2018, 12:41:43 PM
    Author     : pupil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Контакт</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="img/team-img/2.png">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600,700,900" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/magnific.pupup.css">
        <link rel="stylesheet" href="assets/css/sweet.alert.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/vendor.css">   
        <link rel="stylesheet" href="assets/css/main.css"> <!-- main stylesheet -->
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        
        <!-- start .preloader -->
<div class="preloader">
    <div class="inner text-center">
        <span class="preloader-spin"></span>
    </div>
</div>
<!-- end .preloader -->

<div class="site_wrap" id="site_wrap">
<div class="eco--header--wraper eco--header--2 eco--white--style">
    <div class="eco--header--top">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-xs-4">
                    <div class="eco--logo">
                        <a href="controller?command=empty">BalticStyle</a>
                    </div>
                </div>
                <div class="col-md-10 col-xs-8">
                    <div class="eco--header--btn text-right">
                        <a href="controller?command=product" class="eco--btn">К продукции</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- end .eco-header-top -->
    <div class="eco--header--bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-7 eco--menu--col col-sm-6 clearfix">

                                    <nav class="eco--main--menu" id="display_none2">
                        <ul>
                            <li class="current-menu-item"><a href="controller?command=empty">Главная</a>
                            </li>
                            <li><a href="controller?command=product">Товары</a></li>
                            <li><a href="controller?command=brand">Бренды</a></li>
                            <li><a href="controller?command=contact">Контакт</a></li>
                        </ul>
                    </nav>


<header class="header" id="display_none">
  <div class="hamburger">
    <button class="button hamburger__button js-menu__toggle">
      <span class="hamburger__label">Открыть меню</span>
    </button>
  </div>
  <nav class="menu">
    <ul class="list menu__list">
      <li class="menu__group">
        <a href="controller?command=empty" class="link menu__link">Главная</a>
      </li>
      <li class="menu__group">
        <a href="controller?command=product" class="link menu__link">Товары</a>
      </li>
      <li class="menu__group">
        <a href="controller?command=brand" class="link menu__link">Бренды</a>
      </li>
      <li class="menu__group" id="active_punkt">
        <a href="controller?command=contact" class="link menu__link">Контакт</a>
      </li>
    </ul>
  </nav>
</header>



                                    </div>
                <div class="col-md-5 col-sm-6  clearfix">
                    <nav class="eco--right--nav">
                        <ul>
                            <li><a id="color_white" href="controller?command=faq">Faq</a></li>
                            <li><a id="color_white" href="controller?command=login">Вход & Регистрация</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div> <!-- end .eco-header-bottom -->
</div> <!-- end .eco-header-wraper -->



<div class="eco--home--area--3 c7-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-5 eco--home--height--1">
                <div class="eco--home--content--3">
                    <div class="eco--sec--title--white eco--small">
                        <span>Скорость ответа - наша гордость</span>
                        <h1>Ответим в <br>течении часа</h1>
                    </div>
                    <div class="eco--content">
                        <p>Заполните форму и отправтье, после чего, с Вами свяжутся по указанному адресу.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1 eco--home--height--1">
                <form action="controller?command=addNewMessage" method="POST" class="eco--mc--form2">
                    <div class="eoc--home--form ">
                        <h3>Заполните форму</h3>
                        <input type="text" name="userName" placeholder="Ваше имя" required="">
                        <input type="text" name="email" placeholder="name@gmail.com" required="">
                        <button type="submit">Отправить &nbsp; <i class="fa fa-spinner fa-pulse hidden submitSpinner2"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div> <!-- end .eco-home-area-1 -->

</div> <!-- end .site_wrap -->
<!--all JavaScript Files-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>
<script src="assets/js/menu.js"></script>
<script src="assets/js/vendor/slick.min.js"></script>
<script src="assets/js/vendor/magnific.popup.min.js"></script>
<script src="assets/js/vendor/sweet.alert.min.js"></script>
<script src="assets/js/vendor/particle.min.js"></script>
<script src="assets/js/particle.config.js"></script>
<script src="assets/js/vendor/slicknav.min.js"></script>
<script src="assets/js/active.js"></script>
        
    </body>
</html>
