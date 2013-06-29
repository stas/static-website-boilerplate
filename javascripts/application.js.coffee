#= require_self

((w, $) ->
  $doc = $(document)

  Boilerplate =
    run: ->
      @

  w.Boilerplate = Boilerplate
  $doc.ready( Boilerplate.run() )
) window, jQuery
