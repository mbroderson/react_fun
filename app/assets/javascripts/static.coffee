OneTimeClickLink = React.createClass
  getInitialState: ->
    {clicked: false}
  linkClicked: (event) ->
    @setState(clicked: true)
  render: ->
    unless @state.clicked
      React.DOM.div(
        {id: "one-time-click-link"},
        React.DOM.a(
          {href:"javascript:void(0)", onClick: @linkClicked},
          "Click me"
        )
      )
    else
      React.DOM.div(
        {id: "one-time-click-link"}, 'Link clicked!'
        )
element = React.createFactory(OneTimeClickLink)
$ ->
  React.render(
    element(),
    document.body
  )
