import "https://unpkg.com/trix@2.0.8/dist/trix.umd.min.js"

window.addEventListener("trix-file-accept", function(event) {
  event.preventDefault()
  alert("File attachment not supported!")
})
