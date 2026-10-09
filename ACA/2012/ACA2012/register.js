/*
* Check email using regexes
*/
function check_email(email)
{
 	if (typeof(email) != "string")
        return false;

    //characters allowed on name: 0-9a-Z-._ on host: 0-9a-Z-. on between: @
	var re = /^[0-9a-zA-Z\.\-\_]+\@[0-9a-zA-Z\.\-]+$/;
    if (email.search(re) == -1)
       return false;

    //must start or end with alpha or num
    re = /^[^0-9a-zA-Z]|[^0-9a-zA-Z]$/;
    if (email.search(re) != -1)
        return false;

    //name must end with alpha or num
    re = /([0-9a-zA-Z_]{1})\@./;
    if (email.search(re) == -1)
        return false;

    //host must start with alpha or num
    re = /.\@([0-9a-zA-Z_]{1})/;
    if (email.search(re) == -1)
        return false;

    //pair .- or -. or -- or .. not allowed
	re = /.\.\-.|.\-\..|.\.\..|.\-\-./;
    if (email.search(re) != -1)
        return false;

    //pair ._ or -_ or _. or _- or __ not allowed
    re = /.\.\_.|.\-\_.|.\_\..|.\_\-.|.\_\_./;
    if (email.search(re) != -1)
        return false;

    //host must end with '.' plus 2-5 alpha for TopLevelDomain
    re = /\.([a-zA-Z]{2,5})$/;
    if (email.search(re) == -1)
        return false;

    return true;
}

function submit_form(form)
{
	var email = form['register_email'].value;
	if (!check_email(email))
	{
		alert("Invalid email address!!!\n\nPlease enter your valid email address.");
		form['register_email'].focus();
		return false;
	}
	
	var name = form['register_name'].value;
	
	if (name.length == 0)
	{
		alert("Please fill in your full name.");
		form['register_name'].focus();
		return false;
	} 

	var affiliation = form['register_affiliation'].value;
	
	if (affiliation.length == 0)
	{
		alert("Please fill in your full affiliation.");
		form['register_affiliation'].focus();
		return false;
	} 

	var country  = form['register_country'].value;
	
	if (country.length == 0)
	{
		alert("Please fill in your country.");
		form['register_country'].focus();
		return false;
	} 

	var email  = form['register_email'].value;
	
	if (email.length == 0)
	{
		alert("Please fill in your email.");
		form['register_email'].focus();
		return false;
	} 

	form['action'].value = 'register';
	// prevent from running this again.
	form.onsubmit = null;

	return true;
}
