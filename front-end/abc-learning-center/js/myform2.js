// var users = localStorage.getItem("users"); 
// $(function () {
//     users = JSON.parse(users); // Convert String as an Object
//     if (users === null) // If there is nothing intialize
//         users = [];
//     });

function formValidation() {
    if(user_name === ''){        
        alert("Please enter username");
        return false
    }
    if(comments === ''){        
        alert("Please enter your comments");
        return false
    }
}

    // if(user_name === ''){
    //     course.registration.add('error')
    // }
    //     else {
    //         course.registrant.remove('error')
    //     }

    // if(user_name === ''){
    //     contact.registration.add('error')
    // }
    //     else {
    //         contact.registrant.remove('error')
    //     }

    // if(user_name === ''){
    //     email.registration.add('error')
    // }
    //     else {
    //         email.registrant.remove('error')
    //     }
    // }  
    // if(checf)
    

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
}




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

// *******************************
// *******This is not working******
// ********************************************************/




