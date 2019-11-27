
/* eslint-disable no-undef */
/* Lab 7 JavaScript File  */

// this is the block that allows code to execute only after the DOM
// is fully loaded:
$(document).ready(function() {

   // example event handler:

   // Problem 1: When the user clicks on the <h1>,
   //change the 'your name' to your own name (ie Joe Smith) 
   //change the text to be your name in small caps
   //change the color to be blue
   // (note that there is already a class defined for the area where your name should go)
   $('#labButton').click(function() {
      alert('You\'ve clicked the lab button');
   });

   $('h1 .myName').click(function(){
   	$(this).html('Jerry Hu').css({
   		'color': 'blue',
   		'font-variant': 'small-caps'
   	})
   });


   // Problem 2: Make the "lorem ipsum" paragraphs 
   //   vanish over a 6/10 sec duration when a user clicks "Hide text"; 
   //   make it appear within a 1 second duration when a user clicks "Show text":
   $('#hideText').click(function(){
   	$('#showHideBlock p').hide(600);
   });

    $('#showText').click(function(){
   	$('#showHideBlock p').show(1000)
   });

   // Problem 3: When a normal list item is clicked, make it turn red using addClass.
   //            When a red list item is clicked change it back
   // (Note that there already is a css style named ".red" in lab6.css.)
   $('#labList li').click(function(){
   	if($(this).hasClass("redClass")){
   		$(this).css({
   			'color': 'black'
   		})
   		$(this).removeClass("redClass")
   	}else{
	   	$(this).css({
	   		'color': 'red'
	   	}),
	   	$(this).addClass("redClass")
   	}
   });



   // Problem 4: lookup jquery toggle() and use this code on the "Toggle Text"
   // link to show/hide the text:
   $('#toggleText').click(function(){
   	$('#showHideBlock p').toggle(1000)
   });


   /* When you are done:
     Post this lab to your iit website,
     link it from your projects page,
     and put a *working* hyperlink to your projects
     page in the readme file.
 */
});
