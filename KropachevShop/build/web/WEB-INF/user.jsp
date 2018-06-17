<%-- 
    Document   : user
    Created on : 17.04.2018, 22:25:38
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BalticStyle - личный кабинет</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/fav.png" type="image/x-icon">
	<link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/admin.css">
	<link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body style="background-color: #fff;">
        <header class="l-header">
    <div class="l-header__inner clearfix">
      <div class="header-icons-group">
                  <div class="c-header-icon basket">
        		BALTICSTYLE.EE
    	</div>
      </div>
    </div>
            
  </header>
  <div class="l-sidebar">
    <div class="l-sidebar__content">
      

<div class="menu-espanso" id="menu-in-login">
    <div id="menu" class="menu">
    <div id="menu-in" class="menu-in"></div>
    </div>
    <span class="linee linea1"></span>
    <span class="linee linea2"></span>
    <span class="linee linea3"></span>
    <div class="voci-menu">
      <ul>
        <li><a href="#"><img src="images/menuIcons/Clothes.png"><p>Товары</p></a></li>
        <li><a href="#"><img src="images/menuIcons/Delivery.png"><p>Поставщики</p></a></li>
        <li><a href="#"><img src="images/menuIcons/Sales.png"><p>Скидки</p></a></li>
        <li><a href="#"><img src="images/menuIcons/CreditCard.png"><p>Как заказать</p></a></li>
        <li><a href="controller?command=product"><img src="images/menuIcons/CreditCard.png"><p>Добавить продукт</p></a></li>
        <li><a href="#"><img src="images/menuIcons/Store.png"><p>О магазине</p></a></li>
        <li><a href="#"><img src="images/menuIcons/CostumerCare.png"><p>Контакт</p></a></li>
        <li class="active-punkt"><a href="controller?command=user"><img src="images/menuIcons/Login.png"><p>Кабинет</p></a></li>
        <li><a href="controller?command=logout"><img src="images/menuIcons/Closed.png"><p>Выйти</p></a></li>
        <li id="hover_search"><div id="search2" class="">
  				<input id="input" placeholder="">
  				<button id="button"><i class="fa fa-search"></i></button>
			</div>
		</li>
      </ul>
    </div>
  </div>
    </div>
  </div>

<main class="l-main">
  <div class="content-wrapper content-wrapper--with-bg">




	<div id="banner_img" class="col-md-12">
		</div>



<div id="padding_none" class="col-md-12">
	<div id="clothes" class="col-md-9" style="width: 100%; padding-top: 25px;">
		<div>
			<ul id="myList" class=" photos">
                                    <div class="" style="padding-right: 0px;">
  <div class="row">
      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Назначение на Роли</b>
            </div>
          </div>

          <div class="row">
            <a href="#!">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">person</i>
                <span class="indigo-text text-lighten-1"><h5>Менеджер</h5></span>
              </div>
            </a>
            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="#!">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">people</i>
                <span class="indigo-text text-lighten-1"><h5>Поддержка</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>

      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Продукция</b>
            </div>
          </div>
          <div class="row">
            <a href="controller?command=product">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">store</i>
                <span class="indigo-text text-lighten-1"><h5>Товары</h5></span>
              </div>
            </a>

            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="#!">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">assignment</i>
                <span class="indigo-text text-lighten-1"><h5>Заказы</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Поставщики</b>
            </div>
          </div>

          <div class="row">
            <a href="#!">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">local_offer</i>
                <span class="indigo-text text-lighten-1"><h5>Бренды</h5></span>
              </div>
            </a>

            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="#!">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">loyalty</i>
                <span class="indigo-text text-lighten-1"><h5>Популярные</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>

      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Дополнительно</b>
            </div>
          </div>
          <div class="row">
            <a href="#!">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">view_list</i>
                <span class="indigo-text text-lighten-1"><h5>Категории</h5></span>
              </div>
            </a>
            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="#!">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">message</i>
                <span class="truncate indigo-text text-lighten-1"><h5>Сообщения</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="fixed-action-btn click-to-toggle" style="bottom: 45px; right: 24px;">
      <a class="btn-floating btn-large pink waves-effect waves-light">
        <i class="large material-icons">add</i>
      </a>

      <ul>
        <li>
          <a class="btn-floating red"><i class="material-icons">person</i></a>
          <a href="" class="btn-floating fab-tip">Менеджер</a>
        </li>

        <li>
          <a class="btn-floating yellow darken-1"><i class="material-icons">people</i></a>
          <a href="" class="btn-floating fab-tip">Поддержка</a>
        </li>

        <li>
          <a class="btn-floating green"><i class="material-icons">local_offer</i></a>
          <a href="" class="btn-floating fab-tip">Бренды</a>
        </li>

        <li>
          <a class="btn-floating blue"><i class="material-icons">message</i></a>
          <a href="" class="btn-floating fab-tip">Сообщения</a>
        </li>
      </ul>
    </div>
                </div>







</ul>
</div>



<div class="modal fade product_view" id="product_view">
	<div id="modal_card">

            <div class="modal-body">
            	<div class="col-md-6">
                  <div class="product-image"><img src="https://sportland.ee/spodb/wp-content/uploads/2017/08/VANS-VD3HY28-300x300.jpg" alt="" /></div>
              </div>
                	<div class="product_close">
  		<div class="close_product">
  	    	<a href="" class="modal__close demo-close">
					<i class="fa fa-close"></i>
				</a>
		</div>
	</div>
                  <div class="col-md-6">
                  <div class="product-info">
    <h1 class="product-name">Nike air zoom vomero</h1>
    <h2 class="product-price">199</h2>
    <h3 class="product-slogan">Comfort and speed, customized</h3>
    <ul class="preferences">
      <!--<li>
        <span class="list-name">Цвет</span>
        <ul class="colors">
          <li class="red"></li>
          <li class="blue active"></li>
          <li class="yellow"></li>
        </ul>
      </li>-->
      <li>
        <span class="list-name">Размер</span>
        <select class="size">
          <option>7</option>
          <option>8</option>
          <option>9</option>
          <option>10</option>
        </select>
      </li>
      <li>
        <span class="list-name">Ко-во</span>
        <select class="qty">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </li>
    </ul>
    <div id="order">
    <a class="button" href="#">Оформить заказ</a>
</div>
  </div>
</div>
            </div>

</div>
</div>


		</div>

<div id="category" class="col-md-3" style="background-color: #fff;">
	
  </div>



</div>

</div>
</main>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="fa fa-chevron-up"></i></a>
	</div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="js/scrollbottom.js"></script>

<script>$('.menu , .linee').on('click', function() {
  $('.menu-in').toggleClass('over')
  $('.linea1').toggleClass('overL1')
  $('.linea2').toggleClass('overL2')
  $('.linea3').toggleClass('overL3')
  $('.voci-menu').toggleClass('overvoci')
});
</script>

<script type="text/javascript">
	$('.toggle').on('click', function() {
  $('.container').stop().addClass('active');
});

$('.close').on('click', function() {
  $('.container').stop().removeClass('active');
});
</script>

<script>
	var search = document.getElementById('search');
var button = document.getElementById('button');
var input = document.getElementById('input');

function loading() {
	search.classList.add('loading');
	
	setTimeout(function() {
		search.classList.remove('loading');
	}, 1500);
}

button.addEventListener('click', loading);

input.addEventListener('keydown', function() {
	if(event.keyCode == 13) loading();
});
</script>

       <script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js"></script>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
        <script>
            $('.button-collapse').sideNav();
            $('.collapsible').collapsible();
            $('select').material_select();
        </script>
    </body>
</html>
