Timers =
  init: ->
    @initCountdownUntil()
    @initCountdownSince()

  initCountdownUntil: ->
    $('div[data-countdown-until]').each (index, element) ->
      $element = $(element)
      date = new Date($element.data('countdown-until'))
      $element.countdown(until: date)

  initCountdownSince: ->
    $('div[data-countdown-since]').each (index, element) ->
      $element = $(element)
      date = new Date($element.data('countdown-since'))
      $element.countdown(since: date)

window.Timers = Timers