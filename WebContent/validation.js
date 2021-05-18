

function checkpassword(){


    var pass=document.getElementById('pass').value;


if(pass=='abc123'){

alert("succuss");
return true;
}

else{
    alert("password failed");
   return false;
}

}