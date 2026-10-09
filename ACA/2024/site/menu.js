let menu = [
    {title:'Home',              page:'index.html'},
    {title:'ACA 2024',         page:'call.html'},//Call for papers
    {title:'Poster',            page:'poster.html'},
    {title:'Sessions',          page:'sessions.html'},
    {title:'Venue',             page:'venue.html'},
    //{title:'Invited Talks',     page:'invitedTalks.html'},
    {title:'Committees',        page:'committees.html'},
    //{title:'Bibliography',      page:'bibliography.html'},
    {title:'Photos',    page:'photos_cuba.html'},
    {title:'Directions',        page:'directions.html'},
    {title:'Registration',      page:'registration.html'},
    {title:'Program',           page:'program.html'},
    //{title:'Media',             page:'photos.html'},
]
//let custom_style = 'margin-right:0.3em';
let custom_style = 'margin-right:0.5em';
function loadMenu(page){
    let root = document.querySelector('.menu');
    menu.forEach(element => {
        var item = document.createElement('li');
        var cls = 'section';
        if(page==element.page) cls+=' selected';
        item.className = 'turquoise has-submenu';
        item.innerHTML = "<a href='"+element.page+"' class='"+cls+"' style='"+custom_style+"' onclick='window.location=\""+element.page+"\"'>"+element.title+"</a>";
        root.appendChild(item);
    }); 
}
document.loadMenu = loadMenu;
