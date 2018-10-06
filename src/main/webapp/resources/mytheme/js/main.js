/**
 * 
 */

function validateForm() {
    var firstName = document.forms["myForm"]["fname"].value;
	    var lastName = document.forms["myForm"]["fname"].value;
    var dob = document.forms["myForm"]["fname"].value;

	    var gender = document.forms["myForm"]["fname"].value;
    var salary = document.forms["myForm"]["fname"].value;
   
    if (firstName == "") {
        alert("First Name must be filled out");
        return false;
    }
	if (lastName == "") {
        alert("Last Name must be filled out");
        return false;
    }
	if (dob == "") {
        alert("DOB must be filled out");
        return false;
    }
	if (gender == "") {
        alert("Gender must be filled out");
        return false;
    }
	if (salary == "") {
        alert("Salary must be filled out");
        return false;
    }
	}