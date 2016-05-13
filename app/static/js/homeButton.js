$(document).ready(function () {
	$("#firstButton").on("click", function () {
		$("#mainContent").hide();
      $("#hiddenContent").show();
		});

	var j = 6;
  $('#addArtist').on('click', function() {
    $("#hid"+j).show();
		j++;
		if (j == 11) {
			$('#addArtist').hide();
		}
  });
 })
