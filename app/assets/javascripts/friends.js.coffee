# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# jQuery ->
#   $('#friends').dataTable
#     sPaginationType: "full_numbers"
#     bJQueryUI: true
#     bProcessing: true
#     bServerSide: true
#     sAjaxSource: $('#friends').data('source')
jQuery ->
   $('#friends').dataTable
     aaSorting: [[ 4, "DESC" ]]
     paging: false
     dom: '<"top"f>'
     oLanguage:
      sSearch: "חיפוש:"

   $('#month').dataTable
     paging: false
     scrollX: true
     bFilter: false
     bInfo: false
