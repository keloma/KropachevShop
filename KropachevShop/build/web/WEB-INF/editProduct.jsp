<%-- 
    Document   : addBrand
    Created on : May 30, 2018, 1:10:06 PM
    Author     : pupil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Редактирование</title>
        <link rel="icon" href="img/team-img/2.png">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="css/admin.css">
    </head>
    <body>
                 <ul id="slide-out" class="side-nav fixed z-depth-2">
    <li class="center no-padding">
      <div class="indigo darken-2 white-text" style="height: 180px;">
        <div class="row">
          <img style="margin-top: 5%;" width="100" height="100" src="img/team-img/1.png" class="circle responsive-img" />

          <p style="margin-top: -13%;">
            Меню
          </p>
        </div>
      </div>
    </li>

    <li id="dash_dashboard"><a class="waves-effect" href="controller?command=admin"><b>Главная</b></a></li>

    <ul class="collapsible" data-collapsible="accordion">
      <li id="dash_users">
        <div id="dash_users_header" class="collapsible-header waves-effect"><b>Роли</b></div>
        <div id="dash_users_body" class="collapsible-body">
          <ul>
            <li id="users_seller">
              <a class="waves-effect" style="text-decoration: none;" href="controller?command=panelAdmin">Назначение на роль</a>
            </li>
          </ul>
        </div>
      </li>

      <li id="dash_products">
        <div id="dash_products_header" class="collapsible-header waves-effect"><b>Продукция</b></div>
        <div id="dash_products_body" class="collapsible-body">
          <ul>
            <li id="products_product">
              <a class="waves-effect" style="text-decoration: none;" href="controller?command=addProduct">Добавить</a>
              <a class="waves-effect" style="text-decoration: none;" href="controller?command=allProduct">Товары</a>
            </li>
          </ul>
        </div>
      </li>

      <li id="dash_categories">
        <div id="dash_categories_header" class="collapsible-header waves-effect"><b>Дополнительно</b></div>
        <div id="dash_categories_body" class="collapsible-body">
          <ul>
            <li id="categories_category">
              <a class="waves-effect" style="text-decoration: none;" href="controller?command=allMessage">Сообщения</a>
            </li>

            <li id="categories_sub_category">
              <a class="waves-effect" style="text-decoration: none;" href="#!">Заказы</a>
            </li>
          </ul>
        </div>
      </li>

      <li id="dash_brands">
        <div id="dash_brands_header" class="collapsible-header waves-effect"><b>Бренды</b></div>
        <div id="dash_brands_body" class="collapsible-body">
          <ul>
            <li id="brands_brand">
              <a class="waves-effect" style="text-decoration: none;" href="controller?command=addBrand">Добавить</a>
            </li>

            <li id="brands_sub_brand">
              <a class="waves-effect" style="text-decoration: none;" href="controller?command=allBrand">Бренды</a>
            </li>
          </ul>
        </div>
      </li>
    </ul>
  </ul>

  <header>
    <ul class="dropdown-content" id="user_dropdown">
      <li><a class="indigo-text" href="controller?command=empty" target="_blank">На сайт</a></li>
      <li><a class="indigo-text" href="controller?command=logout">Выйти</a></li>
    </ul>

    <nav class="indigo" role="navigation">
      <div class="nav-wrapper">
          <a data-activates="slide-out" class="button-collapse show-on-" href="#!"><i style="margin-left: 15px; margin-top: 2px;" class="fa fa-align-center"></i></a>

        <ul class="right hide-on-med-and-down">
          <li>
            <a class='right dropdown-button' href='' data-activates='user_dropdown'><i class=' material-icons'>account_circle</i></a>
          </li>
        </ul>

        <a href="#" data-activates="slide-out" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
      </div>
    </nav>

    <nav>
      <div class="nav-wrapper indigo darken-2">
        <a style="margin-left: 20px;" class="breadcrumb" href="controller?command=editProduct">Редактирование</a>

        <div style="margin-right: 20px;" id="timestamp" class="right"></div>
      </div>
    </nav>
  </header>

  <main>
    <div class="row col-md-12">
      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Изменить товар</b>
            </div>
          </div>

          <div class="row">
            <form action="controller?command=doChangeProduct" method="POST">
                <div class="form-group">
                  <input type="hidden" name="product_id"  value="${editProduct.id}">
                  <label for="user-name"></label>
                  <input type="text" name="name" class="form-control" id="user-word" value="${editProduct.name}">
                </div>
                
                <div class="form-group">
                  <label for="user-image"></label>
                  <input type="text" name="price" class="form-control" id="user-trans" value="${editProduct.price}">
                </div>
                
                <div class="form-group">
                  <label for="user-image"></label>
                  <input type="text" name="image" class="form-control" id="user-trans" value="${editProduct.image}">
                </div>
                
                <div class="form-group">
                  <label for="user-image"></label>
                  <input type="text" name="size" class="form-control" id="user-trans" value="${editProduct.size}">
                </div>
                
                <div class="form-group">
                  <label for="user-image"></label>
                  <input type="text" name="brand" class="form-control" id="user-trans" value="${editProduct.brand}">
                </div>
                
                <div class="form-group">
                  <label for="user-image"></label>
                  <input type="text" name="male" class="form-control" id="user-trans" value="${editProduct.male}">
                </div>
                
                
                <button type="submit" class="roles-roles">Изменить</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>
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
