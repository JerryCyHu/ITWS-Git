/* Lab 5 JavaScript File 
   Place variables and functions in this file */

var firstN = "";
var lastN = "";
var nickN = "";

function validate(formObj) {
   // put your validation code here
   // it will be a series of if statements

   if (formObj.firstName.value == "") {
      alert("You must enter a first name");
      formObj.firstName.focus();
      return false;
   }
   if (formObj.lastName.value == "") {
      alert("You must enter a last name");
      formObj.lastName.focus();
      return false;
   }
   if (formObj.title.value == "") {
      alert("You must enter a title");
      formObj.title.focus();
      return false;
   }
   if (formObj.org.value == "") {
      alert("You must enter a organization");
      formObj.org.focus();
      return false;
   }
   if (formObj.pseudonym.value == "") {
      alert("You must enter a pseudonym");
      formObj.pseudonym.focus();
      return false;
   }
   if (formObj.comments.value == ""||formObj.comments.value == formObj.comments.defaultValue) {
      alert("You must enter a comments");
      formObj.comments.focus();
      return false;
   }
   alert("Sucessfully submitted");
   return true;
}

var userChanged = false;

function clearUp(){
	if (userChanged == false) {
		var text = document.getElementById("comments");
		text.value = "";
	}
	userChanged = true;
}

function display(){
   var formObj = document.getElementById("addForm");
   firstN = formObj.firstName.value;
   lastN = formObj.lastName.value;
   nickN = formObj.pseudonym.value;
   if(firstN != "" && lastN != "" && nickN != ""){
      alert(firstN + " " + lastN + " is " + nickN);
   }else{
      alert("Information is incomplete");
   }
}

function autoFocus(){
   document.getElementById("firstName").focus();
}