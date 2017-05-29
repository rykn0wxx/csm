$(function () {
  //var els = $('.my-code-area').ace({ theme: 'twilight', lang: 'ruby' })

  if ($('#dynmic-pnl a').length > 0) {
    $('#dynmic-pnl a').on('click', function () {
      setTimeout(function() {
        $('#dynmic-pnl .admin-ace').each(function () {
          $(this).ace({theme: 'monokai', lang: 'ruby'});
        });
      }, 50);
    });
  }

  function initAce () {
    if ($('.admin-ace').length > 0) {
      $('.admin-ace').each(function () {
        $(this).ace({theme: 'monokai', lang: 'ruby'});
      });
    }
  }

  function frmRemFld() {
    if ($('form .remove_fields').length > 0) {
      $('form .remove_fields').on('click', function (ev) {
        $(this).prev('input[type=hidden]').val('1');
        $(this).closest('fieldset').hide();
        ev.preventDefault();
      });
    }
  }

  function frmAddFld () {
    if ($('form .add_fields').length > 0) {
      $('form .add_fields').on('click', function (ev) {
        var time = new Date().getTime();
        var regexp = new RegExp($(this).data('id'), 'g');
        $(this).before($(this).data('fields').replace(regexp, time));
        frmRemFld();
        ev.preventDefault();
      });
    }
  }

  frmRemFld();
  frmAddFld();
  initAce();
});
