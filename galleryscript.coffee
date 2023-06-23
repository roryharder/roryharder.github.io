// Get references to the HTML elements
const slideElement = document.getElementById("slide");

// Array of image file paths
const imagePaths = [
  "picture1.jpg",
  "picture2.jpg",
  "picture3.jpg"
  // Add more image paths as needed
];

let currentIndex = 0;

// Function to display the current image
function showImage() {
  slideElement.src = imagePaths[currentIndex];
}

// Function to navigate to the previous image
function prevImage() {
  currentIndex = (currentIndex === 0) ? (imagePaths.length - 1) : (currentIndex - 1);
  showImage();
}

// Function to navigate to the next image
function nextImage() {
  currentIndex = (currentIndex === imagePaths.length - 1) ? 0 : (currentIndex + 1);
  showImage();
}

// Show the initial image
showImage();
