let items;
let speeds;
function setup(){
    createCanvas(600, 900);
    initItems();
}

function draw(){
    background(255);
    updateItems();
    drawItems();
}

function initItems(){
    items=new Array();
    speeds=new FloatList();
}

function mousePressed(){
    items.push(new p5.Vector(mouseX, mouseY));
    speeds.append(random(5, 10));
}

function updateItems(){
    for(let i = 0;i < items.length;i++) {
        let item = items[i];
        item.y+=speeds.get(i);
        if(item.y > height) {
            items.splice(i,1)[0];
            speeds.remove(i);
        }
    }
}

function drawItems(){
    fill(0);
    for(let i = 0;i < items.length;i++) {
        let item = items[i];
        ellipse(item.x, item.y, 30, 30);
    }
    console.log(items.length);
}

