# jQuery ->
#   # tabsにクリックイベントハンドラ登録
#   $('#tab').on('click', '.tab', (e)->
#     # activeな要素を一旦解除する
#     $('#tab').find('.active').removeClass('active')
#     # クリックされたタブと対応するパネルをactiveにする
#     $clickedTab = $(e.target).addClass('active')
#     $($clickedTab.attr('href')).addClass('active')
#   )

TabView = Backbone.View.extend(
  el: "#tab"
  events:
    "click .tab": "tabClick"

  initialize: ->
    $(window).on "hashchange", =>
      # hashchangeイベントが発生したらactiveなタブを切り換える
      @activate location.hash

  tabClick: (e) ->
    @activate $(e.target).attr("href")

  activate: (id) ->
    console.log id
    # activeな要素を一旦解除する
    @$(".active").removeClass "active"

    # 指定されたタブと対応するパネルをactiveにする
    @$("a[href=\"" + id + "\"]").addClass "active"
    @$(id).addClass "active"
)

$ ->
  # 忘れずにインスタンスを作る
  view = new TabView()

