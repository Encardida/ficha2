// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree

document.addEventListener("turbolinks:load", function() {

    $(document).on('click', '.pagination a',function(){
      $.getScript(this.href);
      return false;
    });

    $('#matter_search input').keyup(function() {
      $.get($("#matter_search").attr("action"), $("#matter_search").serialize(), null, "script");
      return false;
    });

    $('#user_search input').keyup(function() {
      $.get($("#user_search").attr("action"), $("#user_search").serialize(), null, "script");
      return false;
    });

    $('#teacher_search input').keyup(function() {
      $.get($("#teacher_search").attr("action"), $("#teacher_search").serialize(), null, "script");
      return false;
    });

});
