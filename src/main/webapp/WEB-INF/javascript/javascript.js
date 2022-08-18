var AdminNameCheck = function() {
    if(document.myForm.name.value == ""){
        
        if(alert("User Id cannot be blank")){
            document.myForm.name.focus();
        }
        else
            document.activeElement.blur();
            
    }
    else{
        return false;
    } 
}
var AdminpasswordCheck = function() {
     var passwordRegex = new RegExp(" /^(?=.\d)(?=.[a-z])(?=.*[A-Z]).{5,10}$/");
     if(!document.myForm.password.value.match(passwordRegex)){
            if(alert("Password must be contain 5 to 10 characters which contain at least one numeric digit, one uppercase and one lowercase letter")){ 
                 document.myForm.password.focus();
            }
            else
                document.activeElement.blur();
        }
   else{
       return false;
   } 
  
}