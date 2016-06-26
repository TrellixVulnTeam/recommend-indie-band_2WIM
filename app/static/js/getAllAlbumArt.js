$(document).ready(function() {
  var i = 1;
  $('.panel').each(function() {
    var artist = $('.hiddenArtist' + i).html().replace(/\s+/g, '+');
    var album = $('.hiddenAlbum' + i).html().replace(/\s+/g, '+');
    console.log(artist, album);
    getAlbums(artist, album, i);
    i++;
  });
});

function getAlbums(artist, album, i){
  $.ajax({
    type: 'POST',
    url: 'http://ws.audioscrobbler.com/2.0/',
    data: 'method=album.getInfo' +
      '&api_key=bd7e293a51b53716d502db4d74835f01' +
      '&artist=' + artist +
      '&album=' + album +
      '&format=json',
    success: function(data) {
      console.log(data);
        $('#imgSlot' + i).append('<img src="' + data.album.image[2]['#text'] + '"/>');
      },
      error: function(code, message) {
        console.log('there was an error '+ message);
      }
    });
}
