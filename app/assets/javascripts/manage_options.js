$(document).ready(function(){
  document.addEventListener("turbolinks:load", function() {
    $(document).on("click", "#options_generate, #options_start, #options_remove, #options_end", function(){
      $("#manage_actions").fadeOut(200, function() {
        $(this).html();
      });
      var content = $(this).attr('data-load');
      $('#loading-action').html(content);
      $('#spinner').fadeIn(2000);
    })
  });
});