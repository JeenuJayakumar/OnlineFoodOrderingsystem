function regivalidate() {
}

function ValidateEmail() {
	
	var isValid = true;
	var customername = document.myForm.CustomerName.value;
	var letters = /^[A-Za-z]+$/;
	var inputText = document.myForm.EmailId.value;
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

	
	/*	if (inputText.match(mailformat)) {
		document.myForm.EmailId.focus();
		isValid= true;
	} else {
		alert("You have entered an invalid email address!");		
		document.myForm.EmailId.focus();
		return false;
	}*/

	if (customername.match(letters)) 
	{
		isValid= true;
		if (inputText.match(mailformat))
		{
			document.myForm.EmailId.focus();
			isValid= true;
		}
		else 
		{
			alert("You have entered an invalid email address!");		
			document.myForm.EmailId.focus();
			isValid= false;
		
		}
	}
		
	else 
	{
		alert("Name should only contain alphabets");
		isValid = false;
	}
	
	return isValid;
	
}
