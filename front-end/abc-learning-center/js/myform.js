var users = localStorage.getItem("users"); 
$(function () {
    users = JSON.parse(users); // Convert String as an Object
    if (users === null) // If there is nothing intialize
        users = [];
    });

function formValidation() {
    // Get the HTML elements
    var course = document.registration.course;
    var userName = document.registration.user_name;
    var email = document.registration.email;
    var contact = document.registration.contact;
    var message = document.registration.message;

        if (isValidUserName(userName, 4, 30))
            if (isValidEmail(email))
                if (isValidContact(contact, 8)){
                // if (isValidAddress(address, 10, 50)){


                var lang = "[" +  $("#langEN").val() + "," + $("#langNonEN").val() + "]"
                var user = JSON.stringify({
                    course: $("#course").val(),
                    user_name: $("#user_name").val(),
                    email: $("#email").val(),
                    contact: $("#contact").val(),
                    message: $("#message").val()
                  });

                 users.push(user);
                 localStorage.setItem("users", JSON.stringify(users)); 
                return true;
            }

                
         return false;
}

function isValidUserName(userName, minLen, maxLen) {
    var userNameLength = userName.value.length;
    if (userNameLength == 0 || userNameLength > maxLen || userNameLength < minLen) { // || - Or operator
        alert("User Name should not be empty / length must be between " + minLen + " to " + maxLen);
        userName.focus();
        return false;
    } else if (!isAlpha(userName)) {        //! - Not operator
        alert("Enter alphabets only");
        userName.focus();
        return false;
    }
    return true;
}

function isValidEmail(email) {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (email.value.match(mailformat)) {
        return true;
    }
    else {
        alert("Enter valid email address!");
        email.focus();
        return false;
    }
}


function isValidContact(contact, len) {
    var contactLength = contact.value.length;
    if (contactLength == 0 || contactLength != len) {
        alert("Contact should not be empty / length must be " + len);
        contact.focus();
        return false;
    } else if (!isNumber(contact)) {
        alert("Enter Numbers only");
        contact.focus();
        return false;
    }
    return true;
}


function isAlpha(input) {
    var characters = /^[A-Za-z]+$/; // Regular Expression [ ] - Options , A-Z - A,B, C ... Z, ^ - Any 
    if (input.value.match(characters)) {
        return true;
    }
    return false;
}

function isNumber(input) {
    var characters = /^[0-9{8}]+$/;
    if (input.value.match(characters)) {
        return true;
    }
    return false;
}

function isAlphaNumeric(input) {
    var characters = /^[0-9A-Za-z]+$/;
    if (input.value.match(characters)) {
        return true;
    }
    return false;
}

// *************************************** 
// Admin JS
// ***************************************
function showAll(){
var users = localStorage.getItem("users");
$(document).ready(function(){
    users = JSON.parse(users); // Convert String as an Object
    if (users === null) // If there is nothing intialize
        users = [];

    listRegistrants();
});
}

function listRegistrants() {
    var users = localStorage.getItem("users");
    users = JSON.parse(users); // Convert String as an Object
    if (users === null) // If there is nothing intialize
        users = [];

    $("#tbl-list").html("");
    $("#tbl-list").html(
            "<thead>" +
            "<tr>" +          
            "<th>Course</th>" +
            "<th>User Name</th>" +
            "<th>Email</th>" +
            "<th>Contact</th>" +
            "<th>Comments</th>" +
            "</tr>" +
            "</thead>" +
            "<tbody>" +
            "</tbody>"
            ); 
			
			
			for (var user in users) {
				var registrant = JSON.parse(users[user]);	 

				$("#tbl-list tbody").append("<tr>" +                    
                        "<td>" + registrant.course + "</td>" +
                        "<td>" + registrant.user_name + "</td>" +
						"<td>" + registrant.email + "</td>" +
						"<td>" + registrant.contact + "</td>" + 
                        "<td>" + registrant.comments + "</td>" + 
                        "</tr>"
                );
    } 
}

function addPet() {
    var name = document.forms.petDetails.user_name.value;
	var course = document.forms.petDetails.course.value;
	var email = document.forms.petDetails.email.value;
    var contact = document.forms.petDetails.contact.value;
    var comments = document.forms.petDetails.comments.value;   
    
    var user = JSON.stringify({
        course: $("#course").val(),
        user_name: $("#user_name").val(),
        email: $("#email").val(),
        contact: $("#contact").val(),
        comments: $("#comments").val()
      });

      users.push(user);
      localStorage.setItem("users", JSON.stringify(users)); 
		showAll();
}

function clearAll() {
	localStorage.clear();
	showAll();
	document.forms.petDetails.user_name.value = null;
    document.forms.petDetails.course.value = null;
    document.forms.petDetails.email.value = null;
	document.forms.petDetails.contact.value = null;
	document.forms.petDetails.comments.value = null;
}

// ********************************************************
// *******This is not working******
// *******************************/
function getDataToTable() {
    localStorage.getItem("users", user_username);
    // var users = document.forms.petDetails.user_name.value;

    // var registrant = JSON.parse(users[user_name]);

    // var name = document.forms.petDetails.user_name.value;
	// var course = document.forms.petDetails.course.value;
	// var email = document.forms.petDetails.email.value;
    // var contact = document.forms.petDetails.contact.value;
    // var comments = document.forms.petDetails.comments.value; 
}
// *******************************
// *******This is not working******
// ********************************************************/

// ********************************************************
// *******This is not working******
// *******************************/
function editPet() {      
    var name = document.forms.petDetails.user_name.value;
	var course = document.forms.petDetails.course.value;
	var email = document.forms.petDetails.email.value;
    var contact = document.forms.petDetails.contact.value;
    var comments = document.forms.petDetails.comments.value;   
    
    var user = JSON.stringify({
        course: $("#course").val(),
        user_name: $("#user_name").val(),
        email: $("#email").val(),
        contact: $("#contact").val(),
        comments: $("#comments").val()
      });

      users.push(user);
      localStorage.setItem("users", JSON.stringify(users)); 

		showAll();
}
// *******************************
// *******This is not working******
// ********************************************************/

// ********************************************************
// *******This is not working******
// *******************************/
function deletePet() {
    var name = document.forms.petDetails.user_name.value;
	localStorage.removeItem("user", name);
	showAll();





    // let onlyyou = document.forms.petDetails.user_name.value;
    // localStorage.setItem ("user", onlyyou)
    // var name = document.forms.petDetails.user_name.value = null;
    // var course = document.forms.petDetails.course.value = null;
    // var email = document.forms.petDetails.email.value = null;
	// var contact = document.forms.petDetails.contact.value = null;
	// var comments = document.forms.petDetails.comments.value = null;
    // localStorage.getItem("users", JSON.parse(users));
    // var onlyyou = document.forms.petDetails.user_name.value;
    // localStorage.removeItem(users, onlyyou);
    // var user = JSON.stringify({
    //     course: $("#course").val(),
    //     user_name: $("#user_name").val(),
    //     email: $("#email").val(),
    //     contact: $("#contact").val(),
    //     comments: $("#comments").val()
    //   });

    //   users.push(user);
    //   localStorage.setItem("users", JSON.stringify(users)); 
    showAll()
}
// *******************************
// *******This is not working******
// ********************************************************/




