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
{    if (document.getElementById('home1').style.display === 'none') {
        document.getElementById('home1').style.display = 'block';
    }
    if (document.getElementById('home2').style.display === 'none') {
        document.getElementById('home2').style.display = 'block';
    }
    if (document.getElementById('home3').style.display === 'none') {
        document.getElementById('home3').style.display = 'block';
    }
    if (document.getElementById('home4').style.display === 'none') {
        document.getElementById('home4').style.display = 'block';
    }
    if (document.getElementById('home5').style.display === 'none') {
        document.getElementById('home5').style.display = 'block';
    }
    if (document.getElementById('home6').style.display === 'none') {
        document.getElementById('home6').style.display = 'block';
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
    if (document.getElementById('home1').style.display === 'block') {
        document.getElementById('home1').style.display = 'none';
    }
    return false;
}
function hide6() {
    if (document.getElementById('home2').style.display === 'block') {
        document.getElementById('home2').style.display = 'none';
    }
    return false;
}
function hide7() {
    if (document.getElementById('home3').style.display === 'block') {
        document.getElementById('home3').style.display = 'none';
    }
    return false;
}
function hide8() {
    if (document.getElementById('home4').style.display === 'block') {
        document.getElementById('home4').style.display = 'none';
    }
    return false;
}
function hide9() {
    if (document.getElementById('home5').style.display === 'block') {
        document.getElementById('home5').style.display = 'none';
    }
    return false;
}
function hide10() {
    if (document.getElementById('home6').style.display === 'block') {
        document.getElementById('home6').style.display = 'none';
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