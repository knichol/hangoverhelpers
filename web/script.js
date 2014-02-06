function show() {
    if (document.getElementById('goods1').style.display === 'none') {
        document.getElementById('goods1').style.display = 'block';
    }
    if (document.getElementById('goods2').style.display === 'none') {
        document.getElementById('goods2').style.display = 'block';
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