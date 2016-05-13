$(document).ready(function() {

  $("#firstButton").on('click', function(e) {
  });
  $("#secondButton").on("click", function(e) {

    artists = []
    var j = 1;
    while (j <= 10) {
      var art = $('#artist'+j).val();
      if (!art){
      } else {
        artists.push(art);
      }
      j++;
    };

    if (artists.length < 1) {
      console.log('no artists entered');
      alert("Please enter at least one artist.")
    }

    i = 1;
    fixedArtists = []
    artists.forEach(function(artist) {
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
          if (i >= 1) {
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
})
