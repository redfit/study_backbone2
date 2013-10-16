jQuery ->
  # tabsにクリックイベントハンドラ登録
  $('#tab').on('click', '.tab', (e)->
    # activeな要素を一旦解除する
    $('#tab').find('.active').removeClass('active')
    # クリックされたタブと対応するパネルをactiveにする
    $clickedTab = $(e.target).addClass('active')
    $($clickedTab.attr('href')).addClass('active')
  )
