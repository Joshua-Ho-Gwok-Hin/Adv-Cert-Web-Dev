// $(document).ready(function(){
// 	showAll();
// });

function formValidate(){
	var userName = document.forms.registrationDetails.userName.value;
	var course = document.forms.registrationDetails.course.value;
    var contact = document.forms.registrationDetails.contact.value;
    var email = document.forms.registrationDetails.email.value;
	var message = document.forms.registrationDetails.message.value;

	if (userName =="") {
        alert("Please key in a user name.")
        userName.focus();
		e.preventdefault()
        return false;
    } else if (course == "") {
        alert("Please make a course selection.")
        course.focus();
        return false;
    } else if (contact == undefined) {
        alert("Please key in your phone number.")
        contact.focus();
        return false;
    } else if (email == "") {
        alert("Please key in a user name.")
        email.focus();
        return false;
    } else {
		var detail = JSON.stringify([course, contact, email, message]);
		localStorage.setItem(userName, detail);
    	return true;
	}
}


// function isValidUserName(userName, minLen, maxLen) {
//     var userNameLength = userName.value.length;
//     if (userNameLength == 0 || userNameLength > maxLen || userNameLength < minLen) { // || - Or operator
//         alert("User Name should not be empty / length must be between " + minLen + " to " + maxLen);
//         userName.focus();
//         return false;
//     } else if (!isAlpha(userName)) {        //! - Not operator
//         alert("Enter alphabets only");
//         userName.focus();
//         return false;
//     }
//     return true;
// }

// function isValidEmail(email) {
//     var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
//     if (email.value.match(mailformat)) {
//         return true;
//     }
//     else {
//         alert("Enter valid email address!");
//         email.focus();
//         return false;
//     }
// }
// function isValidContact(contact, len) {
//     var contactLength = contact.value.length;
//     if (contactLength == 0 || contactLength != len) {
//         alert("Contact should not be empty / length must be " + len);
//         contact.focus();
//         return false;
//     } else if (!isNumber(contact)) {
//         alert("Enter Numbers only");
//         contact.focus();
//         return false;
//     }
//     return true;
// }
// function isAlpha(input) {
//     var characters = /^[A-Za-z]+$/; // Regular Expression [ ] - Options , A-Z - A,B, C ... Z, ^ - Any 
//     if (input.value.match(characters)) {
//         return true;
//     }
//     return false;
// }
// function isNumber(input) {
//     var characters = /^[0-9{8}]+$/;
//     if (input.value.match(characters)) {
//         return true;
//     }
//     return false;
// }
// function isAlphaNumeric(input) {
//     var characters = /^[0-9A-Za-z]+$/;
//     if (input.value.match(characters)) {
//         return true;
//     }
//     return false;
// }

function addRegistrant() {
	var userName = document.forms.registrationDetails.user_name.value;
	var course = document.forms.registrationDetails.course.value;
    var contact = document.forms.registrationDetails.contact.value;
    var email = document.forms.registrationDetails.email.value;
	var message = document.forms.registrationDetails.message.value;
	const detail = JSON.stringify([course, contact, email, message]);
	localStorage.setItem(userName, detail);
	showAll();
}
function editRegistrant() {
	var userName = document.forms.registrationDetails.user_name.value;
    let data = JSON.parse(localStorage.getItem(userName));
	document.forms.registrationDetails.course.value = data[0]
    document.forms.registrationDetails.contact.value = data[1]
    document.forms.registrationDetails.email.value = data[2]
    document.forms.registrationDetails.message.value = data[3];
}
function deleteRegistrant() {
	var userName = document.forms.registrationDetails.user_name.value;
	localStorage.removeItem(userName);
	showAll();
	document.forms.registrationDetails.user_name.value = null;
	document.forms.registrationDetails.course.value = null;
	document.forms.registrationDetails.email.value = null;
	document.forms.registrationDetails.contact.value = null;
	document.forms.registrationDetails.message.value = null;
}
function clearAll() {
	localStorage.clear();
	showAll();
	document.forms.registrationDetails.user_name.value = null;
	document.forms.registrationDetails.course.value = null;
	document.forms.registrationDetails.email.value = null;
	document.forms.registrationDetails.contact.value = null;
	document.forms.registrationDetails.message.value = null;
}

function showAll() {

		var key = "";
		var list = "<tr><th>User_Name</th><th>Course</th><th>Contact</th><th>Email</th><th>Message</th></tr>\n";
		var i = 0;

		if (localStorage.length == 0) {
			list += "<tr><td><i>empty</i></td><td><i>empty</i></td><td><i>empty</i></td><td><i>empty</i></td><td><i>empty</i></td></tr>\n";
		  } else {
			for (i = 0; i < localStorage.length; i++) {

			  key = localStorage.key(i);
			  let data = JSON.parse(localStorage.getItem(key));

			  list += "<tr><td>" + key + "</td>\n<td>" +
				data[0] + "</td>\n<td>" + data[1] + "</td>\n<td>" + data[2] + "</td>\n<td>" + data[3] + "</td></tr>\n";

			}
		}
		document.getElementById('list').innerHTML = list;
}
