/* Global Variables */
var speed = 100;

/* Type out text */
function type(txt, id, i=0) {
  if (i < txt.length) {
    document.getElementById(id).innerHTML = txt.substring(0, i + 1) + "|";
    i++;
    setTimeout(type, speed, txt, id, i);
  }
  else {
    document.getElementById(id).innerHTML = txt.substring(0, txt.length);
  }
}

/* Type out text with a blinking cursor */
function typeWriter(txt, id, i=0) {
  type(txt, id, i);

  blinkCursor(id);
}

/* Add a blinking cursor to the end of an element */
function blinkCursor(id) {
   var element = document.getElementById(id);
   var hasCursor = false;

   setInterval(
      function() {
         if(element.innerHTML.charAt(element.innerHTML.length - 1) == "|"){
            element.innerHTML = element.innerHTML.substring(0, element.innerHTML.length - 1);
         }
         else{
            element.innerHTML += "|";
         }
      },
      650
   );
}
