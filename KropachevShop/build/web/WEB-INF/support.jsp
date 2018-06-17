<%-- 
    Document   : admin
    Created on : May 4, 2018, 12:28:24 PM
    Author     : pupil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Панель поддержки</title>
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

    <li id="dash_dashboard"><a class="waves-effect" href="controller?command=support"><b>Главная</b></a></li>

    <ul class="collapsible" data-collapsible="accordion">
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
        <li id="dash_categories">
        <div id="dash_categories_header" class="collapsible-header waves-effect"><b>FAQ</b></div>
        <div id="dash_categories_body" class="collapsible-body">
          <ul>
            <li id="categories_category">
              <a class="waves-effect" style="text-decoration: none;" href="controller?command=addFaq">Добавить</a>
            </li>

            <li id="categories_sub_category">
              <a class="waves-effect" style="text-decoration: none;" href="controller?command=allFaq">Вопросы</a>
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
        <a style="margin-left: 20px;" class="breadcrumb" href="controller?command=support">Главная</a>

        <div style="margin-right: 20px;" id="timestamp" class="right"></div>
      </div>
    </nav>
  </header>

  <main>
    <div class="row">

      <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title" id="leftgg">
              <b>Разделы</b>
            </div>
          </div>
          <div class="row">
            <a href="controller?command=allMessage">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">message</i>
                <span class="indigo-text text-lighten-1"><h5>Сообщения</h5></span>
              </div>
            </a>

            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="controller?command=allOrder">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">shopping_cart</i>
                <span class="indigo-text text-lighten-1"><h5>Заказы</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>
                <div class="col s6">
        <div style="padding: 35px;" align="center" class="card">
          <div class="row">
            <div class="left card-title" id="leftgg">
              <b>FAQ</b>
            </div>
          </div>
          <div class="row">
            <a href="controller?command=addFaq">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">add</i>
                <span class="indigo-text text-lighten-1"><h5>Добавить</h5></span>
              </div>
            </a>

            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="controller?command=allFaq">
              <div style="padding: 30px;" class="grey lighten-3 col s5 waves-effect">
                <i class="indigo-text text-lighten-1 large material-icons">announcement</i>
                <span class="indigo-text text-lighten-1"><h5>Вопросы</h5></span>
              </div>
            </a>
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
