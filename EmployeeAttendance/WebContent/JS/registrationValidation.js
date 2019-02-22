
function validLogin() { 
	
	var fname = document.registration.firstname.value;
	var pwd =  document.registration.password.value;
	var cpwd =  document.registration.cpwd.value;
	var phone = document.registration.phone.value;
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	var mail = document.registration.email.value;
	var i = 0;
	
	if(pwd.length < 6){ 
		alert ( "Password size must be greater than 6." ); 
		document.loginform.password.focus(); 
		return false;
	}
	
	if(pwd != cpwd){ 
		alert ( "Password and Confirm password must be same." ); 
		document.loginform.password.focus(); 
		return false;
	} 
	
	if(phone.length == 10 || isNaN(phone)){ 
		alert ( "Enter valid phone number and size must be 10 digits." ); 
		document.loginform.phone.focus(); 
		return false;
	}
	
	if (reg.test(mail) == false) {
    	alert("Enter valid email address");
        document.loginform.email.focus(); 
        return false;
    }
	
    return true;
    
}