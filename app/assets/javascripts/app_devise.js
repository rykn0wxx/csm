//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

$(function () {
    $('form.custom-form').on('focus', '.form-control', function (ev) {
      $(this).closest('.textbox-wrap').addClass('focused');
    });
    $('form.custom-form').on('blur', '.form-control', function (ev) {
      $(this).closest('.textbox-wrap').removeClass('focused');
    });
});
