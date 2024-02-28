let player;
let xPos = 0;
let yPos = 0;
let dir = 0;
function preload(){
    player = new Array(2);
    player[0]=loadImage("data/left.png");
    player[1]=loadImage("data/right.png");
}

function setup(){
    createCanvas(600, 900);
    xPos=width / 2;
    yPos=height - 50;
    dir=0;
    imageMode(CENTER);
}

function draw(){
    background(255);
    image(player[dir], xPos, yPos, 100, 100);
    if(keyIsPressed) {
        playerMove();
    }
}

function playerMove(){
    if(true) {
        if(keyCode == LEFT_ARROW) {
            xPos-=10;
            dir=0;
            if(xPos < 0) {
                xPos=0;
            }
        }
    else if(keyCode == RIGHT_ARROW) {
            xPos+=10;
            dir=1;
            if(xPos > width) {
                xPos=width;
            }
        }
    }
}

