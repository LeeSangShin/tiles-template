<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
        html,body{ margin:0; padding:0; width:100%; height:100%;}
        .box{ width:100%; height:100%; position:relative; color:#ffffff; font-size:24pt;}
        .jbMenu {
        text-align: center;
        background-color: yellow;
        padding: 10px 0px;
        width: 100%;
      }
      .jbFixed {
        position: fixed;
        top: 0px;
      }
</style>
<script src="./js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
window.onload = function () {

	
	
    $(".box").each(function () {   
        // 개별적으로 Wheel 이벤트 적용
        	 var jbOffset = $( '.jbMenu' ).offset();
     $( window ).scroll( function() {
       if ( $( document ).scrollTop() > jbOffset.top ) {
         $( '.jbMenu' ).addClass( 'jbFixed' );
       }
       else {
         $( '.jbMenu' ).removeClass( 'jbFixed' );
       }
     });
        $(this).on("mousewheel DOMMouseScroll", function (e) {
            e.preventDefault();
            var delta = 0;
            if (!event) event = window.event;
            if (event.wheelDelta) {
                delta = event.wheelDelta / 120;
                if (window.opera) delta = -delta;
            } else if (event.detail) delta = -event.detail / 3;
            var moveTop = null;
            // 마우스휠을 위에서 아래로
            if (delta < 0) {
                if ($(this).next() != undefined) {
                    moveTop = $(this).next().offset().top;
                }
            // 마우스휠을 아래에서 위로
            } else {
                if ($(this).prev() != undefined) {
                    moveTop = $(this).prev().offset().top;
                }
            }
            // 화면 이동 0.8초(800)
            $("html,body").stop().animate({
                scrollTop: moveTop + 'px'
            }, {
                duration: 800, complete: function () {
                }
            });
        });
    });
}
</script>
<body>
<div class="jbMenu">
      <p>
        First Menu
        Second Menu
        Third Menu
        Fourth Menu
      </p>
    </div>

	    <div class="box" style="background-color:red;">1</div>
	    <div class="box" style="background-color:orange;">2</div>
	    <div class="box" style="background-color:yellow;">3</div>
	    <div class="box" style="background-color:green;">4</div>
	    <div class="box" style="background-color:blue;">5</div>
	    <div class="box" style="background-color:indigo;">6</div>
	    <div class="box" style="background-color:violet;">7</div>
</body>
</html>