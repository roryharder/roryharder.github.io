window.onload = ->
  currentIndex = 0
  images = document.querySelectorAll('.slideshow img')
  prevBtn = document.getElementById('prevBtn')
  nextBtn = document.getElementById('nextBtn')

  showImage()

  prevBtn.addEventListener 'click', prevImage
  nextBtn.addEventListener 'click', nextImage

  showImage = ->
    for i in [0...images.length]
      images[i].style.display = 'none'
    images[currentIndex].style.display = 'block'

  prevImage = ->
    currentIndex = if currentIndex is 0 then images.length - 1 else currentIndex - 1
    showImage()

  nextImage = ->
    currentIndex = if currentIndex is images.length - 1 then 0 else currentIndex + 1
    showImage()

