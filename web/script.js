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
function show1()
{
    if (document.getElementById('HomeD').style.display === 'none') {
        document.getElementById('HomeD').style.display = 'block';
    }
    if (document.getElementById('ServicesD').style.display === 'none') {
        document.getElementById('ServicesD').style.display = 'block';
    }
    if (document.getElementById('AboutUs').style.display === 'none') {
        document.getElementById('AboutUs').style.display = 'block';
    }
    if (document.getElementById('Contact').style.display === 'none') {
        document.getElementById('Contact').style.display = 'block';
    }
    if (document.getElementById('Login').style.display === 'none') {
        document.getElementById('Login').style.display = 'block';
    }
    if (document.getElementById('RegisterD').style.display === 'none') {
        document.getElementById('RegisterD').style.display = 'block';
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
function hide5() {
    if (document.getElementById('HomeD').style.display === 'block') {
        document.getElementById('HomeD').style.display = 'none';
    }
    return false;
}
function hide6() {
    if (document.getElementById('ServicesD').style.display === 'block') {
        document.getElementById('ServicesD').style.display = 'none';
    }
    return false;
}
function hide7() {
    if (document.getElementById('AboutUs').style.display === 'block') {
        document.getElementById('AboutUs').style.display = 'none';
    }
    return false;
}
function hide8() {
    if (document.getElementById('Contact').style.display === 'block') {
        document.getElementById('Contact').style.display = 'none';
    }
    return false;
}
function hide9() {
    if (document.getElementById('Login').style.display === 'block') {
        document.getElementById('Login').style.display = 'none';
    }
    return false;
}
function hide10() {
    if (document.getElementById('RegisterD').style.display === 'block') {
        document.getElementById('RegisterD').style.display = 'none';
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
var observe;
if (window.attachEvent) {
    observe = function(element, event, handler) {
        element.attachEvent('on' + event, handler);
    };
}
else {
    observe = function(element, event, handler) {
        element.addEventListener(event, handler, false);
    };
}
function init() {
    var text = document.getElementById('text');
    function resize() {
        text.style.height = 'auto';
        text.style.height = text.scrollHeight + 'px';
    }
    /* 0-timeout to get the already changed text */
    function delayedResize() {
        window.setTimeout(resize, 180);
    }
    observe(text, 'change', resize);
    observe(text, 'cut', delayedResize);
    observe(text, 'paste', delayedResize);
    observe(text, 'drop', delayedResize);
    observe(text, 'keydown', delayedResize);

    text.focus();
    text.select();
    resize();
}