ready = ->
  $('input[type="checkbox"][data-select-all="true"], input[type="checkbox"][data-select="true"]').prop('checked', false)

  $('input[type="checkbox"][data-select-all="true"]').change ->
    select_all = this;
    $('input[type="checkbox"][data-select="true"]').each (index, element) =>
      $(element).prop('checked', $(select_all).is(':checked'))
      $(element).change()

  $('input[type="checkbox"][data-select="true"]').change ->
    if($(this).is(':checked'))
      $(this).parents('tr').addClass('selected')
    else
      $(this).parents('tr').removeClass('selected')

  $('a[data-manage="true"]').click ->
    ids = [];
    $('input[type="checkbox"][data-select="true"]:checked').each (index, element) =>
      ids.push($(element).val())
    $.post($(this).attr('href'), {_method: $(this).data('method'), ids: ids}, null, 'script');
    return false

$(document).ready ready
$(document).on('page:load', ready);