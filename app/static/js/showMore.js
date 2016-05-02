 $(document).ready(function () {

    var clicks = 0;

    $("#addArtists1").on("click", function () {
      if (clicks == 0) {
        $("#top20").show();
        $("#addArtists1").hide();
        $("#addArtists2").show();
        clicks++;
      }
    });
    $("#addArtists2").on("click", function () {
      if (clicks == 1) {
        $("#top30").show();
        $("#addArtists2").hide();
        $("#addArtists3").show();
        clicks++;
      }
    });
    $("#addArtists3").on("click", function () {
      if (clicks == 2) {
        $("#top40").show();
        $("#addArtists3").hide();
        $("#addArtists4").show();
        clicks++;
      }
    });
    $("#addArtists4").on("click", function () {
      if (clicks == 3) {
        $("#top50").show();
        $("#addArtists4").hide();
        clicks++;
      }
    });
  });