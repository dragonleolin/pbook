
//在網址上直接用語法輸入
(function () {
    let el = document.querySelectorAll("input");
    el[0].value = "dragonqoo1988@gmail.com";
    el[1].value = "林暐哲";
    el[2].value = "Luke";
    el[3].value = "a123";
    el[4].value = "a123";


})();


//在網址上直接用語法輸入，可觸發change
(function () {
    function setNativeValue(element, value) {
        let lastValue = element.value;
        element.value = value;
        let event = new Event("input", { target: element, bubbles: true });
        event.simulated = true;
        let tracker = element._valueTracker;
        if (tracker) {
            tracker.setValue(lastValue);
        }
        element.dispatchEvent(event);
    }

    var input = document.querySelectorAll("input");
    setNativeValue(input[0], "9789861364889");
    setNativeValue(input[1], "英語每日一滴");
    setNativeValue(input[2], "阿滴（Ray Du）");
    setNativeValue(input[3], "如何出版");
    setNativeValue(input[4], "2017-06-01");
    setNativeValue(input[5], "初版");
    setNativeValue(input[6], "320");
    setNativeValue(input[7], "168");
    setNativeValue(input[8], "尚可");
})()

    (function () { function setNativeValue(element, value) { 
        let lastValue = element.value; 
        element.value = value; 
        let event = new Event("input", { target: element, bubbles: true }); 
        event.simulated = true; 
        let tracker = element._valueTracker; 
        if (tracker) { tracker.setValue(lastValue); } 
        element.dispatchEvent(event); } 
        var input = document.querySelectorAll("input"); 
        setNativeValue(input[0], "wei.che0812@gmail.com"); 
        setNativeValue(input[1], "林暐哲"); 
        setNativeValue(input[2], "Luke"); 
        setNativeValue(input[3], "a123"); 
        setNativeValue(input[4], "a123"); 
    })()
