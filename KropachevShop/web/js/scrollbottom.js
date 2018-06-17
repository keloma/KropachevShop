$(document).ready(function () {
    size_li = $("#myList li").length;
    x=6;

    if (size_li < 6 || size_li == 6){
        $('#btn_more_kaup').css('display', 'none');
    }
      else{
        $('#btn_more_kaup').css('display', 'table');
    }




    $('#myList li:lt('+x+')').show().css('display', 'block');
    $('#loadMore').click(function () {
        x= (x+6 <= size_li) ? x+6 : size_li;
        $('#myList li:lt('+x+')').fadeIn("slow",null).css('display', 'block');
      if ($("#myList li").length > x)
        $('#loadMore').show();
      else
        $('#loadMore').hide();





      if (x > 12) {
    $('#showLess').show();
} else {
    $('#showLess').hide();
}

    if (x>6) {
    $('body').css('background-color', '#e6e6e6');
    }
    else{
    $('body').css('background-color', '#fff');
    }
    });
    $('#showLess').click(function () {
        x=(x-6<12) ? 12 : x-6;
        $('#myList li').not(':lt('+x+')').fadeOut();
            if (x > 12) {
    $('#showLess').show();
} else {
    $('#showLess').hide();
}
      if ($("#myList li").length > x)
        $('#loadMore').show();
      else
        $('#loadMore').hide();


    $(function(){

        goToBottom();

    });



    });
});


$(function() {
  $('a[href*=#]').on('click', function(e) {
    e.preventDefault();
    /*$('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top}, 500, 'linear');*/
  });
});



$(document).ready(function(){
  //подпишемся на событие click элемента, имеющего id="#launch-modal"
  $('#launch-modal').click(function() {
    //активируем контент, имеющий id="myModal", как модальное окно 
    $('#formlogin').modal({
      //установим модальному окну следующие параметры:
      backdrop: 'static',
      keyboard: true
    });
  }); 
});


$(document).ready(function(){
  //подпишемся на событие click элемента, имеющего id="#launch-modal"
  $('#pruduct-modal').click(function() {
    //активируем контент, имеющий id="myModal", как модальное окно 
    $('#product_view').modal({
      //установим модальному окну следующие параметры:
      backdrop: 'static',
      keyboard: true
    });
  }); 
});




/*
document.'#myList'.style.display = "block";

setTimeout(function() {
  document.'#myList'.style.display = "block";
}, 1000);*/
/*
$('#myList li').css('display', 'block');*/