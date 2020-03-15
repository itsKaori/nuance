var navOpen = false;

function toggleNav() {
if(navOpen){
    closeNav();
}
else{
    openNav();
}
}

function openNav() {
document.getElementById("mySidenav").style.width = "250px";
navOpen = true;
}

function closeNav() {
document.getElementById("mySidenav").style.width = "0";
navOpen = false;
}

var navButton = document.getElementById('navToggleButton');
navButton.addEventListener('click', toggleNav);