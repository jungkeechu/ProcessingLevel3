let img;
function preload(){
    img=loadImage("data/apple.png");
}

function setup(){
    createCanvas(600, 900);
    image(img, 0, 0);
    imageMode(CENTER);
}

function draw(){
    background(255);
    image(img, mouseX, mouseY);
}

