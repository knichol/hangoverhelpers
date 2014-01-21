function show() {
    if (document.getElementById('goods').style.display === 'none') {
        document.getElementById('goods').style.display = 'block';
    }   
    if (document.getElementById('goods1').style.display === 'none') {
        document.getElementById('goods1').style.display = 'block';
    }
    if (document.getElementById('goods2').style.display === 'none') {
        document.getElementById('goods2').style.display = 'block';
    }
    if (document.getElementById('goods3').style.display === 'none') {
        document.getElementById('goods3').style.display = 'block';
    }
    if (document.getElementById('goods4').style.display === 'none') {
        document.getElementById('goods4').style.display = 'block';
    }
    return false;
}
function hide() {
    if (document.getElementById('goods').style.display === 'block') {
        document.getElementById('goods').style.display = 'none';
    }
    return false;
}
function hide1() {
    if (document.getElementById('goods1').style.display === 'block') {
        document.getElementById('goods1').style.display = 'none';
    }
    return false;
}
function hide2() {
    if (document.getElementById('goods2').style.display === 'block') {
        document.getElementById('goods2').style.display = 'none';
    }
    return false;
}
function hide3() {
    if (document.getElementById('goods3').style.display === 'block') {
        document.getElementById('goods3').style.display = 'none';
    }
    return false;
}
function hide4() {
    if (document.getElementById('goods4').style.display === 'block') {
        document.getElementById('goods4').style.display = 'none';
    }
    return false;
}

function CheckInfos(form) {
    if (form.elements.Name.value === "") {
        alert("Enter Name");
    }
    if (form.elements.Password.value === "") {
        alert("Enter Password");
    }
    if (form.elements.Email.value === "") {
        alert("Enter Email");
    }
    if (form.elements.Address.value === "") {
        alert("Enter Address");
    }
    if (form.elements.Phone.value === "") {
        alert("Enter Phone");
    }
    return false;
}