window.onload = function() {
  function readURL(input, $form) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $form
          .find(".js-godmin-activestorage-preview")
          .attr("src", e.target.result);
      };

      reader.readAsDataURL(input.files[0]);
    }
  }

  $(".js-godmin-activestorage-field").change(function() {
    readURL(this, $(this).parents("form"));
  });
};
