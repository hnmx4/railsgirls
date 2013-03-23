// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function () {
    var rowC = '<tr>', rowP = '<tr>';
    var pals = ['/dice_img/0.png', '/dice_img/1.png', '/dice_img/2.png', '/dice_img/3.png', '/dice_img/4.png', '/dice_img/5.png', '/dice_img/6.png'];
    var pushed = false, rflag = false;
    var dice = '';

    /*---------- キャンバスの作成 ----------*/
    for (i=0;i<30;i++) rowC += '<td>&nbsp;</td>';
    rowC += '<tr>';
    for (i=0;i<30;i++) $('#canvas').append(rowC);
    for (i=0;i<900;i++) $('#canvas td').eq(i).css('background-image', 'url(' + pals[0] + ')');

    /*---------- パレットの作成 -----------*/
    for (i=0;i<7;i++) rowP += '<td>&nbsp;</td>';
    rowP += '<tr>';
    $('#palette').html(rowP);
    for (i=0;i<7;i++) $('#palette td').eq(i).css('background-image', 'url(' + pals[i] + ')');

    /*---------- サイコロの目を選択 ----------*/
    $('#palette').click(function (event) {
	$(event.target).css({ borderColor: 'red' }).siblings().css({ borderColor: 'gray' });
	dice = $(event.target).css('background-image');
    }).eq(0).click();

    /*---------- キャンバスに描写 ---------*/
    $('#canvas').mousedown(function (event) {
	pushed = true;
	$(event.target).css('background-image', dice);
	return false;
    }).mousemove(function (event) {
	if (pushed) $(event.target).css('background-image', dice);
	return false;
    });
    $(document).mouseup(function (event) {
	pushed = false;
    });

    /*----------- クリア ------------*/
    $('#clear').click(function () {
	for (i=0;i<900;i++) $('#canvas td').eq(i).css('background-image', 'url(' + pals[0] + ')');
    });

});