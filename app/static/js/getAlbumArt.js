$(document).ready(function() {

  var artist = $('#artist').html().replace(/\s+/g, '+');
  var album = $('#album').html().replace(/\s+/g, '+');
  var ajax_string = "http://ws.audioscrobbler.com/2.0/?method=album.getInfo&api_key=bd7e293a51b53716d502db4d74835f01&artist="+artist+"&album="+album+"&format=json";
  console.log(ajax_string);
  console.log(artist, album);
  getAlbums(artist, album);

});

function getAlbums(artist, album){
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
        $('#imgSlot').append('<img src="' + data.album.image[3]['#text'] + '"/>') //
      },
      error: function(code, message) {
        console.log('there was an error '+ message);
      }
    });
}
