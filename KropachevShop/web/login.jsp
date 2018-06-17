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
        <title>Вход</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="img/team-img/2.png">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600,700,900" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
    	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
	<link rel="stylesheet" href="assets/css/login.css">
    </head>
    <body>
        <div class="preloader">
    <div class="inner text-center">
        <span class="preloader-spin"></span>
    </div>
</div>
        
       <div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 col-sm-12">	
					<div class="form">
				
                                            <form action="controller?command=enter" method="POST">
						<div id="face">
							<i class="indigo-text text-lighten-1 large material-icons">lock_open</i>
						</div>

							<div class="input-group col-md-8 col-md-offset-2" id="login_punkt">
                                                            <input type="text" name="login" class="input email" autocomplete="off" required="">
								<label>Логин</label>
							</div>
						
							<div class="input-group col-md-8 col-md-offset-2" id="login_punkt">
								<input type="password" name="password" class="input password" required="">
								<label>Пароль</label>
							</div>
					
							<div class="input-group" id="login_button">
								<div class="col-md-8 col-md-offset-2">
									<button type="submit">
										ВОЙТИ
									</button>							
								</div>
							</div>
							<div class="forgot" id="margin_bot_for">
								<a href="controller?command=empty">Вернуться на главную</a>
							</div>
							<div class="forgot">
								<a href="controller?command=registration">Еще нет аккаунта?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>
	<script src="assets/js/login.js"></script> 
        <script src="assets/js/vendor/slick.min.js"></script>
        <script src="assets/js/vendor/magnific.popup.min.js"></script>
        <script src="assets/js/vendor/sweet.alert.min.js"></script>
        <script src="assets/js/vendor/particle.min.js"></script>
        <script src="assets/js/particle.config.js"></script>
        <script src="assets/js/vendor/slicknav.min.js"></script>
        <script src="assets/js/active.js"></script>
    </body>
</html>
