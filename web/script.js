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