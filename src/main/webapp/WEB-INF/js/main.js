












///canvas space

(function() {
    var requestAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame ||
        window.webkitRequestAnimationFrame || window.msRequestAnimationFrame || function( callback ){
            window.setTimeout(callback, 1000 / 60);
        };
    window.requestAnimationFrame = requestAnimationFrame;
})();

// Terrain stuff.
var terrain = document.getElementById("terCanvas"),
    background = document.getElementById("bgCanvas"),
    terCtx = terrain.getContext("2d"),
    bgCtx = background.getContext("2d"),
    width = window.innerWidth,
    height = window.innerHeight;

terrain.width = background.width = width;
terrain.height = background.height = height;

// Some random points
var points = [],
    displacement = 140,
    power = Math.pow(2,Math.ceil(Math.log(width)/(Math.log(2))));

// set the start height and end height for the terrain
points[0] = (height - (Math.random()*height/2))-displacement;
points[power] = (height - (Math.random()*height/2))-displacement;

// create the rest of the points


// draw the terrain





// Second canvas used for the stars
bgCtx.fillStyle = '#000';
bgCtx.fillRect(0,0,width,height);

// stars
function Star(options){
    this.size = Math.random()*2;
    this.speed = Math.random()*.1;
    this.x = options.x;
    this.y = options.y;
}

Star.prototype.reset = function(){
    this.size = Math.random()*2;
    this.speed = Math.random()*.1;
    this.x = width;
    this.y = Math.random()*height;
}

Star.prototype.update = function(){
    this.x-=this.speed;
    if(this.x<0){
        this.reset();
    }else{
        bgCtx.fillRect(this.x,this.y,this.size,this.size);
    }
}

function ShootingStar(){
    this.reset();
}

ShootingStar.prototype.reset = function(){
    this.x = Math.random()*width;
    this.y = 0;
    this.len = (Math.random()*80)+10;
    this.speed = (Math.random()*10)+6;
    this.size = (Math.random()*1)+0.1;
    // this is used so the shooting stars arent constant
    this.waitTime =  new Date().getTime() + (Math.random()*3000)+500;
    this.active = false;
}

ShootingStar.prototype.update = function(){
    if(this.active){
        this.x-=this.speed;
        this.y+=this.speed;
        if(this.x<0 || this.y >= height){
            this.reset();
        }else{
            bgCtx.lineWidth = this.size;
            bgCtx.beginPath();
            bgCtx.moveTo(this.x,this.y);
            bgCtx.lineTo(this.x+this.len, this.y-this.len);
            bgCtx.stroke();
        }
    }else{
        if(this.waitTime < new Date().getTime()){
            this.active = true;
        }
    }
}

var entities = [];

// init the stars
for(var i=0; i < height; i++){
    entities.push(new Star({x:Math.random()*width, y:Math.random()*height}));
}

// Add 2 shooting stars that just cycle.
entities.push(new ShootingStar());
entities.push(new ShootingStar());

//animate background
function animate(){
    bgCtx.fillStyle = '#000000';
    bgCtx.fillRect(0,0,width,height);
    bgCtx.fillStyle = '#ffffff';
    bgCtx.strokeStyle = '#ffffff';

    var entLen = entities.length;

    while(entLen--){
        entities[entLen].update();
    }

    requestAnimationFrame(animate);
}
animate();

// / float hover

$(document).on('mouseenter', '.planetFloat', function () {
    $(this).addClass("float")
});
$(document).on('mouseleave', '.planetFloat', function () {
    $(this).removeClass("float")
});

// float logo category

$(document).on('mouseenter', '.category', function () {
    $(this).find(".categorylogo").addClass("float")
});
$(document).on('mouseleave', '.category', function () {
    $(this).find(".categorylogo").removeClass("float")
});

//smoke rocket on scroll

$( window ).scroll(function() {
    $( ".smoke" ).addClass("floatSmoke");
    setTimeout(function () {
        $( ".smoke" ).removeClass("floatSmoke");
    },2500)
});

