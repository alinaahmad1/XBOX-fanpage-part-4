
document.addEventListener('DOMContentLoaded', function() {
    const first = document.getElementById("first-image");
    const second = document.getElementById("second-image");
    const image1Control = document.getElementById("image1Control");
    const image2Control = document.getElementById("image2Control");
    
    
    image1Control.addEventListener("change", function(){
        const opacity1 = document.getElementById("image1Opacity");
        opacity1.value = image1Control.value ;
        first.style.opacity = image1Control.value;
        console.log(opacity1.value);
    });
    
    image2Control.addEventListener("change", function(){
        const opacity2 = document.getElementById("image2Opacity");
        opacity2.value = image2Control.value;
        second.style.opacity = image2Control.value ;
        console.log(opacity2.value);
    });
});

