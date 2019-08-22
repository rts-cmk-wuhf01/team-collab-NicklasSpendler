
document.addEventListener("DOMContentLoaded", () => {

    let imageIndex = 1;
    const imageContainer = document.querySelector("#galleryBox");
    const ImageArray = document.querySelectorAll(".gallery_image");


    const size = imageContainer.clientWidth;
    

    for (i = 0; i < ImageArray.length; i++) {
        let imageContainer = ImageArray[i];   
    }

    


    document.querySelector("#rightArrow").addEventListener("click", () => {
        imageIndex++;

        if (imageIndex > ImageArray.length - 1) {
            imageIndex = 0;
        }
        ChangePhoto();
    });


    document.querySelector("#leftArrow").addEventListener("click", () => {
        imageIndex--;

        if (imageIndex < 0) {
            imageIndex = ImageArray.length - 1;
        }
        ChangePhoto();
    });


    imageContainer.style.transform = "translate(" + (-size * imageIndex) + "px";

    function ChangePhoto() {
        imageContainer.style.transition = "transform 0.6s ease-in-out"; 
        imageContainer.style.transform = "translate(" + (-size * imageIndex) + "px";
        
    }

    imageContainer.addEventListener("transitionend", ()=>{
        if(ImageArray[imageIndex].id === "lastClone"){
            imageContainer.style.transition = "none";
            imageIndex = ImageArray.length - 2;
            imageContainer.style.transform = "translate(" + (-size * imageIndex) + "px";
        }
         if(ImageArray[imageIndex].id === "firstClone"){
            imageContainer.style.transition = "none";
            imageIndex = ImageArray.length - imageIndex;
            imageContainer.style.transform = "translate(" + (-size * imageIndex) + "px";
         }
    })

});