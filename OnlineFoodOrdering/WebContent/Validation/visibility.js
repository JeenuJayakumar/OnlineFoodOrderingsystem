function validate()
{
	var valid;
	if(document.getElementById('submit').clicked == true)
		{
		document.getElementById('spanid').style.visibility = "visible";
		valid=true;
		}
	else
		{
		valid=false;
		}
		
	
	return valid;

}