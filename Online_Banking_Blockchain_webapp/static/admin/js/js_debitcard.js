var input = document.getElementById("switchbox");
var input_value= input.value;

function myFunction(){
    if(input.checked){
        document.getElementById("para").innerHTML="Deactivated";
        document.getElementById("myCheck").checked = true
    }
    else{
        document.getElementById("para").innerHTML="Activated";
        document.getElementById("myCheck").checked = false;

    }    

}

