const nav = document.querySelector("nav");
const button = document.querySelector(".close-nav-btn");
const buttonItem = document.querySelector(".close-nav-btn i");

button.addEventListener('click', () => {
    if (nav.classList.contains("nav-mobile-closed"))
    {
        nav.classList.remove("nav-mobile-closed");
        button.classList.remove("fixed");
    }
    else
    {
        nav.classList.add("nav-mobile-closed");
        button.classList.add("fixed");
    }
});

// close navbar when clicked to outside
document.addEventListener("click", (event) => {

    // check if button or button element (i) clicked or not
    if (event.target != button && event.target != buttonItem)
    {
        nav.classList.remove("nav-mobile-closed");
        button.classList.remove("fixed");
    }
});