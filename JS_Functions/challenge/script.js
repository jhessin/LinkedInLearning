var socialMedia = {
  facebook : 'http://facebook.com/viewsource',
  twitter: 'http://twitter.com/planetoftheweb',
  flickr: 'http://flickr.com/planetotheweb',
  youtube: 'http://youtube.com/planetoftheweb'
};

const social = function () {
  let output = '<ul>',
    myList = document.querySelectorAll('.socialmediaicons');

  for (let key in arguments[0]) {
    output += '<li><a href="' + socialMedia[key] + '">' +
      '<img src="images/' + key + '.png" alt="icon for ' + key + '">' +
      '</a></li>';
  }

  output += '</ul>';

  for(let i = myList.length - 1; i >= 0; i--) {
    myList[i].innerHTML = output;
  }


}(socialMedia);
