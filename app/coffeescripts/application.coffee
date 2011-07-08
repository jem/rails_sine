reload = (value) ->
  $.ajax
    data:
      value: value
    url: "/data"
    success: (result) ->
      $.plot $("#placeholder"), result

$(->
  reload(20)

  $("#slider").slider
    min: 0
    max: 100
    value: 30

  $("#slider").bind "slide",
    $.debounce(
      ->
        reload $(@).slider("value")
      300
    )
)
