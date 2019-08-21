
document.addEventListener("DOMContentLoaded", () => {

    let imageIndex = 0;
    let imageContainer = document.querySelector("#gamePic");
    let ImageArray = document.querySelectorAll(".gallery_image");

    let dataArray = [];

    for (i = 0; i < ImageArray.length; i++) {

        let imageContainer = ImageArray[i];
        dataArray.push(imageContainer.dataset.url);   
    }

    ChangePhoto();


    document.querySelector("#rightArrow").addEventListener("click", () => {
        imageIndex++;

        if (imageIndex > dataArray.length - 1) {
            imageIndex = 0;
        }
        ChangePhoto();
    });


    document.querySelector("#leftArrow").addEventListener("click", () => {
        imageIndex--;

        if (imageIndex < 0) {
            imageIndex = dataArray.length - 1;
        }
        ChangePhoto();
    });




    function ChangePhoto() {
        if (dataArray.length == 0) {
            alert("Der er ingen billeder at vise!");
        }
        imageContainer.setAttribute("src", dataArray[imageIndex]);
    }
});