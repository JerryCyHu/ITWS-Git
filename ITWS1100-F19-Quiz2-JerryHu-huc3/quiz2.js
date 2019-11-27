//Quiz 2
//  Put your javascript here in a document.ready function

var defaultValue = 'Intro to ITWS - Quiz 2';
$(document).ready(function(){
	alert('the page is about to load'),
	$('h1').html(defaultValue);
	$('button').click(function(){
		if ($('h1').html() == defaultValue) {
			$('h1').html($('h4').html() + ' – Quiz 2');
		}else{
			$('h1').html(defaultValue);
		}
	});
	$('h4').hover(function(){
		$('last').addClass("makeItPurple");
	},function(){
		$('last').removeClass("makeItPurple");
	});
	$('h4').click(function(){
		$('h5').html('Clicked!');
	});
});




