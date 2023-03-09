ImageViewer = {
    init: function(){

    },
    _getRandom: function(){
        return Math.floor(Math.random() * this._images.length);
    },
    _changeImage: function() {
        var random = this._getRandom();
        while(this.lastIndex == random){
            random =  this._getRandom();
        }
        $("img").attr("src", "images/" +this._images[random].file);
        this.lastIndex=random;
    },
    lastIndex: -1,
    _slideShow:{
        _start :function(){
            this.stopper = setInterval(function(){
                ImageViewer._changeImage();
            },2000);
        },
        _stop : function(){
            clearInterval(this.stopper);
            this.stopper = null;
        },
        _toggle : function(){
            if(this.stopper != null){ 
                this._stop();        
            } else {
                this._start();
            }
        },
        stopper: null,
    },
    _images: [{ 
        name: "국화",
        file: "Chrysanthemum.jpg"
    }, { 
        name: "사막",
        file: "Desert.jpg"
    }, {
        name: "수국",
        file: "Hydrangeas.jpg"
    }, {
        name: "해파리",
        file: "Jellyfish.jpg"
    }, { 
        name: "코알라",
        file: "Koala.jpg"
    }, { 
        name: "등대",
        file: "Lighthouse.jpg"
    }, {
        name: "펭귄",
        file: "Penguins.jpg" 
    }, {
        name: "툴립",
        file: "Tulips.jpg"
    }]   
}

$(function(){
    $("#btn-change").click(()=>{
        ImageViewer._changeImage();
    })
});

$(function(){
    $("#btn-slideshow").click(()=>{
        ImageViewer._slideShow._toggle(); 
        if(ImageViewer._slideShow.stopper == null){  
            $("#btn-slideshow").text("슬라이드쇼 시작");
        } else {
            $("#btn-slideshow").text("슬라이드쇼 정지");
        }
    })
});