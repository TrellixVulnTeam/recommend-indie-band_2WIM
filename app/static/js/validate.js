$("#firstButton").on('click', function(e) {
});
$("#secondButton").on("click", function(e) {
  artists = []
  var artist1 = $("#artist1").val();
  artists.push(artist1);
  var artist2 = $("#artist2").val();
  artists.push(artist2);
  var artist3 = $("#artist3").val();
  artists.push(artist3);
  var artist4 = $("#artist4").val();
  artists.push(artist4);
  var artist5 = $("#artist5").val();
  artists.push(artist5);

  i = 1;
  fixedArtists = []
  artists.forEach(function(artist) {
    if (artist == undefined) {
      delete window.alert;
      alert('Please be sure to enter an artist for each field.');
      return false;
    };
    validate(artist, i);
    i++;
  });

function validate(artist, i){
  $.ajax({
    type: 'POST',
    async: false,
    url: 'http://ws.audioscrobbler.com/2.0/',
    data: 'method=artist.getinfo' +
      '&artist=' + artist +
      '&autocorrect=1' +
      '&api_key=bd7e293a51b53716d502db4d74835f01' +
      '&format=json',
    success: function(data) {
      var fixedArtist = data.artist.name;
      $('#hidden'+i).val(fixedArtist);
      $('#artist'+i).val(fixedArtist);
      if (i == 5) {
        $('#firstButton').click();
      }
    },
    error: function(code, message) {
      console.log('Error: ', message);
      $('#artist'+i).val();
    }
  });
};
});
