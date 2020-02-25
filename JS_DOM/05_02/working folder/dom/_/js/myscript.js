(function(){

  //selecting our node
  let myNode = document.querySelector('#artlist .pixgrid ul')

  myNode.addEventListener('click', function(e) {
    if(e.target.tagName === 'IMG') {

      var myOverlay = document.createElement('div');
      myOverlay.id = 'overlay';
      document.body.appendChild(myOverlay);

      // set up overlay styles
      myOverlay.style.position = 'absolute';
      myOverlay.style.backgroundColor = 'rgba(0,0,0,0.7)';
      myOverlay.style.cursor = 'pointer';

      fillscreen(myOverlay)

      // create image element
      var imageSrc = e.target.src;
      var largeImage = document.createElement('img');
      largeImage.id = 'largeImage';
      largeImage.src = imageSrc.substr(0, imageSrc.length-7) + '.jpg';
      largeImage.style.display = 'block';
      largeImage.style.position = 'absolute';

      // wait until the image is loaded
      largeImage.addEventListener('load', function() {

        resizeImage(this)

        myOverlay.appendChild(largeImage);
      }); // image has loaded

      largeImage.addEventListener('click', function() {
        if (myOverlay) {
          window.removeEventListener('resize', window, false);
          window.removeEventListener('scroll', window, false);
          myOverlay.parentNode.removeChild(myOverlay);
        }
      });

      window.addEventListener('scroll', function() {
        fillscreen(myOverlay)
        resizeImage(largeImage)
      }, false)

      window.addEventListener('resize', function() {
        fillscreen(myOverlay)
        resizeImage(largeImage)
      }, false)

    } // target is an image
  }, false); //image is clicked

  function centerImage(image) {
    var myDifX = (window.innerWidth - image.width)/2;
    var myDifY = (window.innerHeight - image.height)/2;

    image.style.top = myDifY + 'px';
    image.style.left = myDifX + 'px';
  }

  function fillscreen(overlay) {
    // resize and position overlay
    overlay.style.width = window.innerWidth + 'px';
    overlay.style.height = window.innerHeight + 'px';
    overlay.style.top = window.pageYOffset + 'px';
    overlay.style.left = window.pageXOffset + 'px';
  }
  
  function resizeImage(img) {
    // Resize if taller
    if (img.height > window.innerHeight) {
      img.ratio = window.innerHeight / img.height;
      img.height = img.height * img.ratio;
      img.width = img.width * img.ratio;
    }
    // Resize if wider
    if (img.width > window.innerWidth) {
      img.ratio = window.innerWidth / img.width;
      img.height = img.height * img.ratio;
      img.width = img.width * img.ratio;
    }

    centerImage(img)
  }
})()

