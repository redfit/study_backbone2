(function() {
  jQuery(function() {
    return $('#tab').on('click', '.tab', function(e) {
      var $clickedTab;
      $('#tab').find('.active').removeClass('active');
      $clickedTab = $(e.target).addClass('active');
      return $($clickedTab.attr('href')).addClass('active');
    });
  });

}).call(this);
