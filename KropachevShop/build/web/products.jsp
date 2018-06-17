
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="img/team-img/2.png">
        <title>Товары</title>
            <!--all css files-->
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
<link rel="stylesheet" href="assets/css/products.css">
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
                        <a href="controller?command=contact" class="eco--btn">Написать нам</a>
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
      <li class="menu__group" id="active_punkt">
        <a href="controller?command=product" class="link menu__link">Товары</a>
      </li>
      <li class="menu__group">
        <a href="controller?command=brand" class="link menu__link">Бренды</a>
      </li>
      <li class="menu__group">
        <a href="controller?command=contact" class="link menu__link">Контакт</a>
      </li>
    </ul>
  </nav>
</header>



                                    </div>
                <div class="col-md-5 col-sm-6  clearfix">
                    <nav class="eco--right--nav">
                        <ul>
                            <li><a id="color_fff" href="controller?command=faq">Faq</a></li>
                            <li><a id="color_fff" href="controller?command=login">Вход & Регистрация</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div> <!-- end .eco-header-bottom -->
</div> <!-- end .eco-header-wraper -->

<div class="eco--home--area--6 eco--animated--gradient eco--arrow--wrap">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="eco--home--content--4">
                    <div class="eco--sec--title--white">
                        <div class="eco--btn--wrap eco--mb50" id="top_marg">
                                            <div class="video-link eco--video--button">
                        <a href="#video-popup1" id="a_video2">
                        <i id="icon_video2" class="fa fa-play"></i>
                        </a>
                    </div>

                <div id="video-popup1" class="popup-modal mfp-hide">
                        <div class="fluid-video-wrapper">
                            <iframe src="http://player.vimeo.com/video/130069681?title=0&amp;byline=0&amp;portrait=0&amp;color=faec09" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> 
                        </div>          
                            <a class="close-popup">Close</a>         
                </div>
                        </div>
                        <h1>Лучшие <br> товары от лучших!</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="eco--animated--arrow">
        <a href="#promo2" class="smoothScroll">
            <img src="assets/img/ext/arrow-down.png" alt="">
        </a>
    </div>
</div> 
<div class="eco--pricing--area--1 eco--pd--100">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                
                
                
                
<div id="app">
  <div class="header">
    <h2>Comics</h2>
    <div>
      <button @click="showCart = !showCart" v-show="!verified">
        {{ products.length + (products.length > 1 || products.length === 0 ? " products" : " product") }}
      </button>
    </div>
  </div>
  <div class="cart" v-show="showCart">
    <div v-show="products.length > 0">
      <ul>
        <li v-for="product in products" transition="fade">
          <p><strong>{{ product.quantity }}</strong> - {{ product.name }} <i class="fa fa-trash" @click="removeFromCart(product)"></i></p>
        </li>
      </ul>
      <div><button @click="verified = true, showCart = false">Check out</button></div>
    </div>
    <div v-show="products.length === 0">
      <p>Your cart is empty!</p>
    </div>
  </div>
  <div class="container">
    <div class="shop" v-show="!verified">
      <h3>New Arrivals</h3>
      <ul>
        <li v-for="item in shop">
          <div>
            <h5>{{ item.name }}</h5>
            <p>{{ item.price }}</p>
            <button @click="addToCart(item)">Add to cart</button>
          </div>
        </li>
         <c:forEach var="product" items="${products}">
        <li v-for="item in shop">
          <div>
            <h5>${product.name}</h5>
            <p>${product.price}</p>
            <button @click="addToCart(item)">Add to cart</button>
          </div>
        </li>
          </c:forEach>
      </ul>
    </div>
    <div class="checkout" v-show="verified">
      <h3>Your Cart</h3>
      <h5 v-for="product in products"><strong>{{ product.quantity }}</strong> - {{ product.name }}<span>{{ product.price * product.quantity }}</span></h5>
      <hr />
      <div class="row">
        <div class="u-pull-right">
          <h5>Total: <span>{{ total | currency }}</span></h5>
          <button>Looks Good</button>
          <div><button @click="verified = false, showCart = true">Check out</button></div>
        </div>
      </div>
    </div>
  </div>
</div>
      
      
      
            </div>
        </div>
    </div>
</div>
<div class="eco--newsletter--area--1 c1-bg eco--pd--100">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="eco--sec--title--white eco--small text-center">
                    <span>Вам не пришел документ с заказом?</span>
                    <h1>Напишите нам</h1>
                </div>
            </div>
        </div>
       <div class="row">
           <div class="col-md-8 col-md-offset-2 eco--mt70">
               <div class="eco--mc--form1">
                   <div class="eco--newsletter--1" id="width">
                       <div class="eco--inner" id="align_center">
                       <a href="controller?command=contact">
                           <button type="">Написать сейчас</button>
                        </a>
                       </div>
                   </div>
               </div>
           </div>
       </div>
    </div>
</div>
</div> <!-- end .site_wrap -->
<!--all JavaScript Files-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>
<script src="assets/js/menu.js"></script>
<script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.18/vue.min.js"></script>
<c:forEach var="product" items="${products}">
<script type="text/javascript">
    const shop = [
        {
    name: "${product.name}",
    price: ${product.price},
    quantity: 0
 } 
  /*{
    name: "Dragon Ball Freeza Arc, Vol. 1",
    price: 15.98,
    quantity: 0
  },
  {
    name: "Uzumaki: Spiral into Horror, Vol. 1",
    price: 4.84,
    quantity: 0
  },
  {
    name: "Superman: Red Son (New Edition)",
    price: 10.93,
    quantity: 0
  }*/
];

const vm = new Vue({
  el: "#app",
  data: {
    products: [],
    shop: shop,
    showCart: false,
    verified: false,
    quantity: 1
  },
  computed: {
    total() {
      var total = 0;
      for(var i = 0; i < this.products.length; i++) {if (window.CP.shouldStopExecution(1)){break;}
        total += this.products[i].price;
      }
window.CP.exitedLoop(1);

      return total;
    }
  },
  methods: {
    addToCart(product) {
      product.quantity += 1;
      this.products.push(product);
    },
    removeFromCart(product) {
      product.quantity -= 1;
      this.products.splice(this.products.indexOf(product), 1);
    }
  }
});
//# sourceURL=pen.js</script>
</c:forEach>
<script src="assets/js/vendor/slick.min.js"></script>
<script src="assets/js/vendor/magnific.popup.min.js"></script>
<script src="assets/js/vendor/sweet.alert.min.js"></script>
<script src="assets/js/vendor/particle.min.js"></script>
<script src="assets/js/particle.config.js"></script>
<script src="assets/js/vendor/slicknav.min.js"></script>
<script src="assets/js/active.js"></script>
    </body>
</html>
