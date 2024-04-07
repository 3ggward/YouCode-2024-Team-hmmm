let projBody;
let homeBody;
let trainBody;

window.addEventListener("DOMContentLoaded", () => { 
    projBody = document.querySelector("#projbody");
    homeBody = document.querySelector("#homebody");
    trainBody = document.querySelector("#trainbody");

    hideAllBodies();
    updateToHomebody();
    // updateToProjbody();
});

function updateToProjbody() {
    hideAllBodies();
    projBody.style.display = "flex";
}

function updateToHomebody() {
    hideAllBodies();
    homeBody.style.display = "flex";
}

function updateToTrainbody() {
    hideAllBodies();
    trainBody.style.display = "flex";
}

function hideAllBodies() {
    projBody.style.display = "none";
    homeBody.style.display = "none";
    trainBody.style.display = "none";
}