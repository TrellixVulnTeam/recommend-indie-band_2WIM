$(document).ready(function() {
  	$("#filterButton").on("click", function () {
      // get search query
      var query = $("#filterSearch").val().toUpperCase();
      if (!query) {
        alert("Please enter a value in the filter box.");
        return; // exit function
      }
      var i = 1;
      $(".panel").each(function() {
        if (this.innerHTML.toUpperCase().indexOf(query) == -1) {
          this.style.display = "none";
          i++;
        }
      })
      // show hidden clear filter button
      $("#clearFilterButton").show();
    });

    $("#clearFilterButton").on("click", function () {
      $("#clearFilterButton").hide();
      $(".panel").each(function() {
        this.style.display = "";
      })
      // wipe search box
      $("#filterSearch").val("");
    })
});
