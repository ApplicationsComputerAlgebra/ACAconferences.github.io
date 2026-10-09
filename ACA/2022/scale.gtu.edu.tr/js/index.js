
const sections = document.querySelectorAll("section[id]");
const links = document.querySelectorAll("ul li");



const airportButton = document.querySelector(".airportButton");
const transportButton = document.querySelector(".transportButton");
const visaButton = document.querySelector(".visaButton");
const currencyButton = document.querySelector(".currencyButton");

const airportSelector = document.querySelector(".airportSelector");
const transpotSelector = document.querySelector(".transpotSelector");
const visaSelector = document.querySelector(".visaSelector");
const currencySelector = document.querySelector(".currencySelector");

airportButton.addEventListener("click",function(){
 airportSelector.className = "carousel-item active airportSelector";
 transpotSelector.className = "carousel-item transpotSelector";
 visaSelector.className = "carousel-item visaSelector";
 currencySelector.className = "carousel-item currencySelector";

});


transportButton.addEventListener("click",function(){
 airportSelector.className = "carousel-item airportSelector";
 transpotSelector.className = "carousel-item active transpotSelector";
 visaSelector.className = "carousel-item visaSelector";
 currencySelector.className = "carousel-item currencySelector";

});


visaButton.addEventListener("click",function(){
 airportSelector.className = "carousel-item airportSelector";
 transpotSelector.className = "carousel-item transpotSelector";
 visaSelector.className = "carousel-item active visaSelector";
 currencySelector.className = "carousel-item currencySelector";

});

currencyButton.addEventListener("click",function(){
 airportSelector.className = "carousel-item airportSelector";
 transpotSelector.className = "carousel-item transpotSelector";
 visaSelector.className = "carousel-item visaSelector";
 currencySelector.className = "carousel-item active currencySelector";

});





links.forEach(link => {
    link.addEventListener("click", () => {
        links.forEach(temp => {
            temp.classList.remove("active-link");
        });
        link.classList.add("active-link");
    });
});

// Add an event listener listening for scroll
window.addEventListener("scroll", navHighlighter);

function navHighlighter() {
  let scrollY = window.pageYOffset;

  sections.forEach(current => {
    const sectionHeight = current.offsetHeight;
    const sectionTop = current.offsetTop - 285;
    const sectionId = current.getAttribute("id");

    if (
      scrollY > sectionTop &&
      scrollY <= sectionTop + sectionHeight
    ){
      document.querySelector("nav a[href*=" + sectionId + "]").classList.add("active-link");
      links.forEach(temp => {
        temp.classList.remove("active-link");
    });
    } else {
      document.querySelector("nav a[href*=" + sectionId + "]").classList.remove("active-link");
    }
  });
}
