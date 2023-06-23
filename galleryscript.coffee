$ ->
  currentIndex = 0

  showImage = ->
    images = $(".slideshow img")
    images.hide().eq(currentIndex).show()

  prevImage = ->
    currentIndex = if currentIndex is 0 then images.length - 1 else currentIndex - 1
    showImage()

  nextImage = ->
    currentIndex = if currentIndex is images.length - 1 then 0 else currentIndex + 1
    showImage()

  $("#prevBtn").click(prevImage)
  $("#nextBtn").click(nextImage)

  showImage()
