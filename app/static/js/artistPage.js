$(document).ready(function() {
  // Assign random color to jumbotron
  var colors = ['#212F3C', '#196F3D', '#0E6655', '#117864', '#154360'];
  var randColor = colors[Math.floor(Math.random() * colors.length)];
  $('.jumbotron').css('background-color', randColor);

  // Get artist name
  var artistName = $('#artistName').html();
  var final = artistName.replace(/\s+/g, '+');
  getInfo(final);
  getSongs(final);
  getAlbums(final);
});

function getInfo(final){
  $.ajax({
    type: 'POST',
    url: 'http://ws.audioscrobbler.com/2.0/',
    data: 'method=artist.getinfo' +
      '&artist=' + final +
      '&api_key=bd7e293a51b53716d502db4d74835f01' +
      '&format=json',
    success: function(data) {
      $('.artistBio').html('<p>' + data.artist.bio.summary + '</p>');
    },
    error: function(code, message) {
      console.log('there was an error'+ message);
    }
  });
}
function getSongs(final){
  $.ajax({
    type: 'POST',
    url: 'http://ws.audioscrobbler.com/2.0/',
    data: 'method=artist.gettoptracks' +
      '&artist=' + final +
      '&api_key=bd7e293a51b53716d502db4d74835f01' +
      '&format=json',
    success: function(data) {
      $('.topTracks1').append('<h3 id="song1">' + data.toptracks.track[0].name + '</h3>');
      $('.topTracks2').append('<h3>' + data.toptracks.track[1].name + '</h3>');
      $('.topTracks3').append('<h3>' + data.toptracks.track[2].name + '</h3>');
    },
    error: function(code, message) {
      console.log('there was an error'+ message);
    }
  });
}
function getAlbums(final){
  $.ajax({
    type: 'POST',
    url: 'http://ws.audioscrobbler.com/2.0/',
    data: 'method=artist.gettopalbums' +
      '&artist=' + final +
      '&api_key=bd7e293a51b53716d502db4d74835f01' +
      '&format=json',
    success: function(data) {
      i = 0;

      $(data.topalbums.album).each(function(){
        while (i <= 2) {
            $('<div>', {
              class: 'album'+i
          }).appendTo('.topAlbums');
          console.log(data.topalbums.album[i].image[2]['#text'])
          $('.album'+i).append('<h3>' + data.topalbums.album[i].name + '</h3>');
          if (!$.trim(data.topalbums.album[i].image[2]['#text'])) {
            $('.album'+i).append('<br/><p>Album art not found.</p>');
          };
          $('.album'+i).append('<img src="' + data.topalbums.album[i].image[2]['#text'] + '"/>');
          i++;
        };
      });
    },
    error: function(code, message) {
      $('.topAlbums').append('<p> Could not display album </p>');
    }
  });
}
function makeRequest(q, i){
  var request = gapi.client.youtube.search.list({
    part: "snippet",
    type: "video",
    videoEmbeddable: true,
    q: q,
    maxResults: 1
  });

  request.execute(function(response) {
    var results = response.result;
    $.each(results.items, function(index, item) {
      var vidLink = 'https://www.youtube.com/embed/'+item.id.videoId;
      $(".video"+i).append('<iframe align="middle" src="' + vidLink + '"></iframe>');
    })
  });
}
function init() {
    gapi.client.setApiKey("AIzaSyDibaOhBGPI_-__J2IZo8Kbrihk5IMsnTM");
    gapi.client.load("youtube", "v3", function() {

    var songName1 = $('.topTracks1').html().replace(/\s+/g, '+');
    var songName2 = $('.topTracks2').html().replace(/\s+/g, '+');
    var songName3 = $('.topTracks3').html().replace(/\s+/g, '+');
    var arr = [songName1, songName2, songName3];
    var artistName = $('#artistName').html().replace(/\s+/g, '+');
    i = 1;
    $.each(arr, function(i, val) {
      i++;
      var myRequest = artistName + '+' + $(val).html();
      makeRequest(myRequest, i);
    })
  });
}
