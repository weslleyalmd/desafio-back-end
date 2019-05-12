$(function() {

  $(".bt-show-operations").click(function() {
    modal_prefix = $(this).attr("id");
    modal        = "#operations-modal-" + modal_prefix;
    $(modal).find(".modal").modal();
  })

})