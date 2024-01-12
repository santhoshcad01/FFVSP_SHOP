function registerform(){
    var FirstName=document.getElementById("tbfn").value;
    document.getElementById("fn").innerHTML=FirstName;
    
    var LastName=document.getElementById("tbln").value;
    document.getElementById("ln").innerHTML=LastName;

    var MiddleName=document.getElementById("tbmn").value;
    document.getElementById("mn").innerHTML=MiddleName;

    var PhoneNumber=document.getElementById("tbpn").value;
    document.getElementById("pn").innerHTML=PhoneNumber;

    var EmailId=document.getElementById("tbeid").value;
    document.getElementById("eid").innerHTML=EmailId;


}