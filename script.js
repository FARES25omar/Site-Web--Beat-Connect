var currentSlide = 0;
var slides = document.querySelectorAll(".profile-slide");

slides.forEach((e) => {
  e.style.display = "none";
});
slides[0].style.display = "block";  

function showSlide(n) {
  slides[currentSlide].style.display = "none";
  currentSlide = (n + slides.length) % slides.length;
  slides[currentSlide].style.display = "block";
}

function nextSlide() {
  showSlide(currentSlide + 1);
}
setInterval(nextSlide, 3000);



function toggleMusic(playlistId) {
        var x = document.getElementById(playlistId);
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
}