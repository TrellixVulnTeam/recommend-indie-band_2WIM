$(document).ready(function() {
  var i = 1;
  $('.artist').each(function() {
    var self = $(this);
    var final = self.html().replace(/\s+/g, '+');
    getImages(final, i);
    i++;
  });
});

function getImages(final, i) {
    $.ajax({
      type: 'POST',
      url: 'http://ws.audioscrobbler.com/2.0/',
      data: 'method=artist.getinfo' +
        '&artist=' + final +
        '&api_key=bd7e293a51b53716d502db4d74835f01' +
        '&format=json',
      success: function(data) {
        $('#imgSlot' + i).append('<img class="img-circle" src="' + data.artist.image[2]['#text'] + '"/>')
      },
      error: function(code, message) {
        console.log('there was an error'+ message);
      }
    });
}
