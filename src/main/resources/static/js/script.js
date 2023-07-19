document.addEventListener("DOMContentLoaded", function() {
    const images = document.querySelectorAll(".image-gallery img");
    let currentIndex = 0;

    function showImage(index) {
        images.forEach(function(image) {
            image.classList.remove("active");
        });

        images[index].classList.add("active");
    }

    function nextImage() {
        currentIndex = (currentIndex + 1) % images.length;
        showImage(currentIndex);
    }

    function previousImage() {
        currentIndex = (currentIndex - 1 + images.length) % images.length;
        showImage(currentIndex);
    }

    showImage(currentIndex);

    document.addEventListener("click", function(event) {
        if (event.target.classList.contains("next-button")) {
            nextImage();
        }

        if (event.target.classList.contains("previous-button")) {
            previousImage();
        }
    });
});