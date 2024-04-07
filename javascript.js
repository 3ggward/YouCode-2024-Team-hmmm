let projBody;
let homeBody;

window.addEventListener("DOMContentLoaded", () => { 
    projBody = document.querySelector("#projbody");
    homeBody = document.querySelector("#homebody");

    updateToHomebody();
});

function updateToProjbody() {
    hideAllBodies();
    projBody.style.display = "flex";
}

function updateToHomebody() {
    hideAllBodies();
    homeBody.style.display = "flex";
}

function hideAllBodies() {
    projBody.style.display = "none";
    homeBody.style.display = "none";
}