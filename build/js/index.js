(function() {
  var TabView;

  TabView = Backbone.View.extend({
    el: "#tab",
    events: {
      "click .tab": "tabClick"
    },
    initialize: function() {
      var _this = this;
      return $(window).on("hashchange", function() {
        return _this.activate(location.hash);
      });
    },
    tabClick: function(e) {
      return this.activate($(e.target).attr("href"));
    },
    activate: function(id) {
      console.log(id);
      this.$(".active").removeClass("active");
      this.$("a[href=\"" + id + "\"]").addClass("active");
      return this.$(id).addClass("active");
    }
  });

  $(function() {
    var view;
    return view = new TabView();
  });

}).call(this);
